package site.servlet;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import site.bean.Users;

/**
 * Servlet implementation class Regservlet
 */
@WebServlet("/s-02/Regservlet")
public class Regservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Regservlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		Users u = new Users();
		String username, mypassword, gender, email, introduce, isAccept;
		Date birthday;
		String[] favorites;
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");

		try {
			username = request.getParameter("username");
			mypassword = request.getParameter("mypassword");
			gender = request.getParameter("gender");
			email = request.getParameter("email");
			introduce = request.getParameter("introduce");
			birthday = sdf.parse(request.getParameter("birthday"));

			if (request.getParameterValues("isAccpet") != null) {
				isAccept = request.getParameter("isAccept");
			} else {
				isAccept = "false";
			}
			favorites = request.getParameterValues("favorite");
			u.setUsername(username);
			u.setMypassword(mypassword);
			u.setGender(gender);
			u.setEmail(email);
			u.setFavorites(favorites);
			u.setIntroduce(introduce);
			if (isAccept.equals("true")) {
				u.setFlag(true);
			} else {
				u.setFlag(false);
			}
			u.setBirthday(birthday);
			request.getSession().setAttribute("regUser", u);
			request.getRequestDispatcher("userinfo.jsp").forward(request,
					response);
		} catch (Exception ex) {
			ex.printStackTrace();
		}

	}
}
