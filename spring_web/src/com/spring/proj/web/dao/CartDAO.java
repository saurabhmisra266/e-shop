package com.spring.proj.web.dao;

import java.sql.ResultSet;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("cartDao")
public class CartDAO {

	private NamedParameterJdbcTemplate jdbc;
	private JdbcTemplate jdb;
	@Autowired
	private void setDataSource(DataSource jdbc) {
		this.jdbc=new NamedParameterJdbcTemplate(jdbc);
		this.jdb=new JdbcTemplate(jdbc);
	}
	public boolean addCart(Cart cart) {
		BeanPropertySqlParameterSource param = new BeanPropertySqlParameterSource(cart);
		return jdbc.update("insert into cart(image,price,quantity,username) values(:image,:price,:quantity,:username)",param)==1;
	}
	public List<Cart> showCart(String name){
		
		String sql="select * from cart where username = '"+name+"'";
		return jdbc.query(sql,new RowMapper<Cart>() {
			public Cart mapRow(ResultSet rs, int rowNum) throws SQLException {
				
				Cart cart = new Cart();
				cart.setImage(rs.getString("image"));
				cart.setPrice(rs.getInt("price"));
				cart.setQuantity(rs.getInt("quantity"));
				cart.setUsername(rs.getString("username"));
				return cart;
			}
			
		});
	}
	
	public int deleteItem(String image) {
		MapSqlParameterSource param =new MapSqlParameterSource("image",image);
		return jdbc.update("delete from cart where image=:image", param);
	}
	public void updateQuantity(int quantity[],String image[],String username) {
		for(int i=0;i<quantity.length;i++) {
			String sql = "update cart set quantity='"+quantity[i]+"'where image='"+image[i]+"'and username='"+username+"'";
			// System.out.println(sql);
			jdb.update (sql);
		} 
			
	}
	
}
