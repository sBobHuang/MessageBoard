package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.LoginDao;

public class LoginServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");           //设置请求编码
		response.setContentType("utf-8");                //设置响应编码
		LoginDao loginDao= new LoginDao();
		HttpSession session=request.getSession();           // 先获得user对象，如果是第一次访问该Servlet，用户对象肯定为空，但如果是第
		String l=(String) session.getAttribute("login");    // 二次甚至是第三次，就不应该再判断该用户的信息
        if(l==null||"".equals(l))
			l = loginDao.checkLogin(request.getParameter("name"),request.getParameter("password"));
		if(l!=null){                                      //如果登陆成功
			session.setAttribute("login",l);			//将获取的对象保存在session中
			response.sendRedirect("/main");            //验证成功跳转到 main.jsp
		}
		else{                                             //验证失败跳转到 error.jsp
			response.sendRedirect("error.jsp");
		}
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request,response);
	}

}
