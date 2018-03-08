package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.HiberUtil.HibernateUtil;

import demo.model.MyCart;
import demo.model.Products;

/**
 * Servlet implementation class ShopCartServlet
 */
@WebServlet(urlPatterns={"/ShopCartServlet"})
public class ShopCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ShopCartServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//接收資料
		String pd = request.getParameter("test");
		System.out.println(pd);
		String parameters[] = {pd};
		//創建購物車
		MyCart mycart = new MyCart(); 
		request.getSession().setAttribute("mycart", mycart);
		List<Products> list = HibernateUtil.excuteQuery("from Products where Pid = ?", parameters);
		
		for(Products a:list){
			//創建session
			System.out.println(list.size());
			mycart.addProduct(pd, a);
		}	
		ArrayList<Products> al = null;
		al = mycart.excuteQuery();
		System.out.println(al.size());
		request.setAttribute("carlist", al);
		
		response.setCharacterEncoding("text/html;charset=UTF-8");
		//導向畫面
		
		request.getRequestDispatcher("/pages/details/apex-m500.jsp").forward(request, response);
	}

}
