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
		request.setCharacterEncoding("utf-8");           //�����������
		response.setContentType("utf-8");                //������Ӧ����
		LoginDao loginDao= new LoginDao();
		HttpSession session=request.getSession();           // �Ȼ��user��������ǵ�һ�η��ʸ�Servlet���û�����϶�Ϊ�գ�������ǵ�
		String l=(String) session.getAttribute("login");    // ���������ǵ����Σ��Ͳ�Ӧ�����жϸ��û�����Ϣ
        if(l==null||"".equals(l))
			l = loginDao.checkLogin(request.getParameter("name"),request.getParameter("password"));
		if(l!=null){                                      //�����½�ɹ�
			session.setAttribute("login",l);			//����ȡ�Ķ��󱣴���session��
			response.sendRedirect("/main");            //��֤�ɹ���ת�� main.jsp
		}
		else{                                             //��֤ʧ����ת�� error.jsp
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
