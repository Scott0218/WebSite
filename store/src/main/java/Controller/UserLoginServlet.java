package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.store.Model.Services.UserInterServices;
import com.store.Model.Services.UserServices;

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
		String hql = "from Members where Mid=? and Pwd=?";
		String parameters[] ={uid,pwd}; 
		//checkUser
		UserInterServices uis = new UserServices();
		List<Members> list = uis.check(hql, parameters);
		
		for(Members a:list){
			System.out.println(a.getName() + "\r\n" + a.getEmail());
		}
		//導向畫面
		response.setCharacterEncoding("text/html;charset=utf-8");
		
		String path = request.getContextPath();
		if(!list.isEmpty()&&list.size()==1){
			HttpSession session = request.getSession();
			session.setAttribute("user", list);				
			response.sendRedirect(path+"/pages/index.jsp");
			System.out.println("登入成功!!");
		}else if(list.size()==0){
			//錯誤畫面
			System.out.println("error");
			response.sendRedirect(path+"/pages/UserLoginError.jsp");
		}
		
		
		
	}

}
