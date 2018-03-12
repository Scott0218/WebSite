package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.store.Model.Services.UserInterServices;
import com.store.Model.Services.UserServices;

import Tools.MyCart;
import Tools.MyTools;
import demo.model.Members;

/**
 * Servlet implementation class UserLoginServlet
 */
@WebServlet(urlPatterns = {"/id"})
public class UserLoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public UserLoginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//接收資料
		String uid = request.getParameter("userId");
		String pwd = request.getParameter("userPwd");
		MyTools tools = new MyTools();
		String upwd = tools.md5(pwd);
		//checkUser
		UserInterServices uis = new UserServices();
		Members member = uis.checkUser(uid,upwd);
		
		//導向畫面
		response.setCharacterEncoding("text/html;charset=utf-8");
		
		String path = request.getContextPath();
		if(member!=null){
			HttpSession session = request.getSession();
			//user存放的是會員資料
			session.setAttribute("user", member);
			//登入後創建購物車
			MyCart mycart = new MyCart();
			session.setAttribute("mycart",mycart);
			System.out.println(mycart);
			response.sendRedirect(path+"/pages/index.jsp");
			System.out.println("登入成功!!");
		}else if(member==null){
			//錯誤畫面
			System.out.println("error");
			response.sendRedirect(path+"/pages/loginErrorPage.jsp");
		}
		
		
		
	}

}
