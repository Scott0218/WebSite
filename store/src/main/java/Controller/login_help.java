package Controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;

import com.google.code.kaptcha.Constants;
import com.spring.springUtil;
import com.store.Model.Services.UserServices;

import demo.model.Members;

/**
 * Servlet implementation class login_help
 */
@WebServlet(urlPatterns={"/login_help"})
public class login_help extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public login_help() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");  
		HttpSession session = request.getSession();
		String code = (String)session.getAttribute(Constants.KAPTCHA_SESSION_KEY);   
		
		//存放訊息的HashMap
		HashMap map =new HashMap<String,String>();
		request.setAttribute("map",map);
		System.out.println(code);
		String mid = request.getParameter("userId");
		String userEmail = request.getParameter("userEmail");
		String katnum = request.getParameter("kaptcha");
		
		
		//查詢是否有此帳號
		ApplicationContext ac = springUtil.getApplicationContext();
		UserServices us = (UserServices)ac.getBean("UserInterServices");
		String hql = "from Members where mid = ?";
		String parameters[] = {mid};
		List<Members> list = us.check(hql, parameters);
		//取得會員資料
		String mbId = "";
		String mEmail = "";
		Iterator it = list.iterator();
		while(it.hasNext()){
			Members mb = (Members)it.next();
			mbId = mb.getMid();
			mEmail = mb.getEmail();
		}
		//導向畫面
		if(!mid.equals(mbId)){
			map.put("errMid", "此帳號不存在");
			request.getRequestDispatcher("/pages/forgetPwd.jsp").forward(request, response);
			return;
		}
		if(!userEmail.equals(mEmail)){
			map.put("errEmail", "此mail不存在");
			request.getRequestDispatcher("/pages/forgetPwd.jsp").forward(request, response);
			return;
		}
		if(!katnum.equals(code)){
			map.put("errNum", "驗證碼輸入錯誤");
			request.getRequestDispatcher("/pages/forgetPwd.jsp").forward(request, response);
			return;
		}
		if(map.isEmpty()&&map==null){
			request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
			return;
		}
	}

}
