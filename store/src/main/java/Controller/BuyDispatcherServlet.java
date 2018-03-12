package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.context.ApplicationContext;

import com.spring.springUtil;
import com.store.Model.Services.UserInterServices;

import Tools.MyCart;
import demo.model.Members;
import demo.model.Products;

/**
 * Servlet implementation class BuyDispatcherServlet
 */
@WebServlet(urlPatterns={"/BuyDispatcherServlet"})
public class BuyDispatcherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public BuyDispatcherServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//判斷是否登入
		Members s = (Members)request.getSession().getAttribute("user");
		
		if(s==null){
			//尚未登入時，導向登入畫面
			request.getRequestDispatcher("/pages/login.jsp").forward(request, response);
			return;
		}else{
			String pid = request.getParameter("product");
			//查詢出此點選的商品資訊
			System.out.println("產品編號:" + pid);
			ApplicationContext ac = springUtil.getApplicationContext();
			UserInterServices us = (UserInterServices)ac.getBean("UserInterServices");
			String hql = "from Products where pid= ?";
			String pd[]= {pid};
			List<Products> list = us.check(hql, pd);
			MyCart mycart = (MyCart)request.getSession(true).getAttribute("mycart");
			
			System.out.println(mycart);
			
			for(Products userPd:list){
				mycart.addProduct(pid, userPd);
			}
			ArrayList<Products> al = null;
			
			al = mycart.excuteQuery();
			System.out.println(al);
			HttpSession userSession = request.getSession();
			//將購物選項放到此Session內
			userSession.setAttribute("userlist", al);
			
			userSession.setAttribute("totalPrice",mycart.getTotalPrice()+"");
			System.out.println("總價格:" +mycart.getTotalPrice()+"");
			request.getRequestDispatcher("/pages/index.jsp").forward(request, response);
			return;
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
