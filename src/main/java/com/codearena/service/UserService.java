package com.codearena.service;
import com.codearena.dao.UserDAO;
import com.codearena.entity.User;
import com.codearena.util.BCryptUtil;
public class UserService {
	UserDAO userDAO=new UserDAO();
	public void registerUser(User user) {
		String hashedPassword=BCryptUtil.hashPassword(user.getPassword());
		user.setPassword(hashedPassword);
		user.setRole("USER");
		user.setScore(0);
		userDAO.saveUser(user);
	}
	
	

}
