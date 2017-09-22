package site.dao;

import site.bean.Signin;

public class UsersDAO {
	public boolean usersLogin(Signin u) {
		if ("admin".equals(u.getUserName()) && "admin".equals(u.getPassword())) {
			return true;
		} else {
			return false;
		}
	}
}
