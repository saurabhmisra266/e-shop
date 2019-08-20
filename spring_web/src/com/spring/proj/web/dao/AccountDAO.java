package com.spring.proj.web.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("accountDao")
public class AccountDAO {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	public boolean createAccount(Account account) {
		BeanPropertySqlParameterSource param =new BeanPropertySqlParameterSource(account);
		return jdbc.update("insert into users (username,password,email,enabled,address,street,state,name,mobile,authority) values (:username,:password,:email,:enabled,:address,:street,:state,:name,:mobile,:authority)", param)==1;
	}
	public Account showAccount(String username) {

		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("username",username);
		return jdbc.queryForObject("select * from users where username=:username", params,
				new RowMapper<Account>() {

					public Account mapRow(ResultSet rs, int rowNum)
							throws SQLException {
						Account account = new Account();

						account.setName(rs.getString("name"));
						account.setMobile(rs.getString("mobile"));
						account.setEmail(rs.getString("email"));
						account.setAddress(rs.getString("address"));
						account.setStreet(rs.getString("street"));
						account.setState(rs.getString("state"));

						return account;
					}

				});
	}
	

}