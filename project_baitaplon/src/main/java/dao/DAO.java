package dao;



import entity.Product;
import entity.Sex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import java.util.List;


import entity.Account;
import entity.Cart;
import entity.Category;
import entity.Order;







public class DAO {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    
    
    
    
    
    
    
    
    //load tất cả product
    public List<Product>getAllProduct() {
        List<Product> list = new ArrayList<>();
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM product ");
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),
                        rs.getInt(7)));
		} 
			}catch (Exception e) {
			
		}
		return list;
}
    
    public Product getSingleProduct(int id) {
		 Product row = null;
	        try {
	        	Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
				PreparedStatement pst = conn.prepareStatement("select * from product where id=? ");
	            
	            pst.setInt(1, id);
	            ResultSet rs = pst.executeQuery();

	            while (rs.next()) {
	            	row = new Product();
	                row.setId(rs.getInt("id"));
	                row.setName(rs.getString("name"));
					/* row.setCategory(rs.getString("category")); */
	                row.setPrice(rs.getDouble("price"));
	                row.setImage(rs.getString("image"));
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	            System.out.println(e.getMessage());
	        }

	        return row;
	    }
   //xóa sản phẩm đã oder
    public void cancelOrder(int id) throws ClassNotFoundException {
        //boolean result = false;
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("delete from oder where id=?");
           
            pst.setInt(1, id);
            pst.execute();
            //result = true;
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.print(e.getMessage());
        }
        //return result;
    }
    //list sản phẩm đã oder
    public List<Order> userOrders(int id) {
        List<Order> list = new ArrayList<>();
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("select * from oder where aid=? order by oder.id desc ");
            
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                Order order = new Order();
                DAO productDao = new DAO();
                int pId = rs.getInt("pid");
                Product product = productDao.getSingleProduct(pId);
                order.setOrderId(rs.getInt("id"));
                order.setId(pId);
                order.setName(product.getName());
				/* order.setCategory(product.getCategory()); */
                order.setImage(product.getImage());
                order.setPrice(product.getPrice()*rs.getInt("quantity"));
                order.setQunatity(rs.getInt("quantity"));
                order.setDate(rs.getString("date"));
                list.add(order);
            }
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return list;
    }
    
    
    //thêm vào bảng oder
    public boolean insertOrder(Order model) {
        boolean result = false;
        try {Class.forName("com.mysql.jdbc.Driver");
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
		PreparedStatement pst = conn.prepareStatement("insert into oder (pid, aid, quantity, date) values(?,?,?,?) ");
            
            pst.setInt(1, model.getId());
            pst.setInt(2, model.getAid());
            pst.setInt(3, model.getQunatity());
            pst.setString(4, model.getDate());
            pst.executeUpdate();
			/* result = true; */
        } catch (SQLException | ClassNotFoundException e) {
            System.out.println(e.getMessage());
        }
        return result;
    }
    
    //tổng gái sản phẩm trong giỏ hàng
    
    public double getTotalCartPrice(ArrayList<Cart> cartList) {
        double sum = 0;
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                	Class.forName("com.mysql.jdbc.Driver");
        			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
        			PreparedStatement pst = conn.prepareStatement("select price from product where id=?");
                    pst.setInt(1, item.getId());
                    ResultSet rs = pst.executeQuery();
                    while (rs.next()) {
                        sum+=rs.getDouble("price")*item.getQuantity();
                    }

                }
            }

        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        }
        return sum;
    }
    //list sản phẩm trong giỏ hàng
    public List<Cart> getCartProducts(ArrayList<Cart> cartList) {
        List<Cart> book = new ArrayList<>();
        try {
            if (cartList.size() > 0) {
                for (Cart item : cartList) {
                	Class.forName("com.mysql.jdbc.Driver");
        			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
        			PreparedStatement pst = conn.prepareStatement("select * from product where id=?");
                    pst.setInt(1, item.getId());
                    ResultSet rs = pst.executeQuery();
                    while (rs.next()) {
                        Cart row = new Cart();
                        row.setId(rs.getInt("id"));
                        row.setName(rs.getString("name"));
                        /*row.setCategory(rs.getString("category"));*/
                        row.setImage(rs.getString("image"));
                        row.setPrice(rs.getInt("price")*item.getQuantity());
                        row.setQuantity(item.getQuantity());
                        book.add(row);
                    }

                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println(e.getMessage());
        } catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
        return book;
    }

    
            
    //load tất cả category
   
    public List<Category>getAllCategory() {
        List<Category> list = new ArrayList<>();
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM category ");
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)) );
		} 
			}catch (Exception e) {
			
		}
		return list;
}
    
    public List<Sex>getAllSex() {
        List<Sex> list = new ArrayList<>();
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM sex ");
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                list.add(new Sex(rs.getInt(1), rs.getString(2)) );
		} 
			}catch (Exception e) {
			
		}
		return list;
}
    
    
    //loa product theo category
    public List<Product>getProductBycid(String cid) {
        List<Product> list = new ArrayList<>();
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM product where cateid=?");
			pst.setString(1, cid);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),rs.getInt(7)));
		} 
			}catch (Exception e) {
			
		}
		return list;
}
    
    
    //load product theo id san pham do
    public Product getProductBypid(String id) {
        
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
		PreparedStatement pst = conn.prepareStatement("SELECT * FROM product where id = ?");
			pst.setString(1, id);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),rs.getInt(7));
		} 
			}catch (Exception e) {
			
		}
		return null;
}
    
    
    //tìm kiếm product theo name
    public List<Product> getsearchProduct(String txtSearch) {
        List<Product> list = new ArrayList<>();
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			String query = "SELECT * FROM product WHERE name like ? ";
			PreparedStatement pst = conn.prepareStatement(query);
			pst.setString(1, "%"+txtSearch+"%");
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6),rs.getInt(7)));
		} 
			}catch (Exception e) {
			
		}
		return list;
}
    
    //đăng nhập
    public Account login(String user, String pass) {
        
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM account WHERE user = ? AND pass = ?");
			pst.setString(1, user);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                return new Account(rs.getInt(1), 
                		rs.getString(2),
                		rs.getString(3), 
                		rs.getInt(4), 
                		rs.getInt(5));
		} 
			}catch (Exception e) {
			
		}
		return null;
    
    }
    
    //đăng xuất
public Account checkAccountExist(String user) {
        
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
			conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
			PreparedStatement pst = conn.prepareStatement("SELECT * FROM account WHERE user = ? ");
			pst.setString(1, user);
			
			ResultSet rs = pst.executeQuery();
			while (rs.next()) {
                return new Account(rs.getInt(1), 
                		rs.getString(2),
                		rs.getString(3), 
                		rs.getInt(4), 
                		rs.getInt(5));
		} 
			}catch (Exception e) {
			
		}
		return null;
    
    }

//tạo tk
public void SignUp(String user, String pass) {
	try {
		Class.forName("com.mysql.jdbc.Driver");
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
		PreparedStatement pst = conn.prepareStatement("INSERT INTO account(user, pass, isSell, isAdmin) VALUES (?,?,0,0);");
		pst.setString(1, user);
		pst.setString(2, pass);
		pst.executeUpdate();
	} catch (Exception e) {
		// TODO: handle exception
	}
}

//hàm trả về list sản phẩm theo sell_id
public List<Product>getProductBySellID(int id) {
    List<Product> list = new ArrayList<>();
    
    try {
    	Class.forName("com.mysql.jdbc.Driver");
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
		PreparedStatement pst = conn.prepareStatement("select * from product where sell_ID = ?");
		pst.setInt(1, id);
		ResultSet rs = pst.executeQuery();
		while (rs.next()) {
            list.add(new Product(rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getDouble(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getInt(7)));
	} 
		}catch (Exception e) {
		
	}
	return list;
}

//delete sản phẩm trong manager
public void deleteProduct(String pid) {
    
    try {
    	Class.forName("com.mysql.jdbc.Driver");
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
		PreparedStatement pst = conn.prepareStatement("delete from product where id = ?");
		pst.setString(1, pid);
        pst.executeUpdate();
    } catch (Exception e) {
    }
}

//them san pham vao dtb
public void insertProduct(String name, String image, String price,
        String title, String description, String category, int sid) {
    
    try {
    	Class.forName("com.mysql.jdbc.Driver");
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
		PreparedStatement pst = conn.prepareStatement("INSERT INTO `product`"
				+ "( name, image, price, title, description, cateid, sell_id) "
				+ "VALUES (?,?,?,?,?,?,?)");
		pst.setString(1, name);
        pst.setString(2, image);
        pst.setString(3, price);
        pst.setString(4, title);
        pst.setString(5, description);
        pst.setString(6, category);
        pst.setInt(7, sid);
        pst.executeUpdate();
    } catch (Exception e) {
    }
}


//sủa sản phẩm

public void editProduct(String name, String image, String price,
        String title, String description, String category, String pid) {
    
    try {
    	Class.forName("com.mysql.jdbc.Driver");
		conn= DriverManager.getConnection("jdbc:mysql://localhost:3306/qlbanhang?useSSL= false", "root", "");
		PreparedStatement pst = conn.prepareStatement("UPDATE product SET name=?,image= ?,price=?,title=?,description=?,cateid=? WHERE id =?");
		pst.setString(1, name);
        pst.setString(2, image);
        pst.setString(3, price);
        pst.setString(4, title);
        pst.setString(5, description);
        pst.setString(6, category);
        pst.setString(7, pid);
        pst.executeUpdate();
    } catch (Exception e) {
    }
}


	




    
    public static void main(String[] args) {
		/*
		 * DAO dao = new DAO(); Account account = dao.login("hoangtung,hoangtung");
		 * for(account o : list) { System.out.print(o); }
		 */
    	
    	
    	
    	/*List<Product> list = dao.getAllProduct();
    	Product listc = dao.getProductBypid("5");
    	
    	Product lista = dao.getProductBypid("1");
    	
    	for(Product o :lista ) {
    		System.out.print(o);
		*/
	}
    
}


