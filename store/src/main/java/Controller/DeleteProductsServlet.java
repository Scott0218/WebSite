package Controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Tools.MyCart;
import demo.model.Products;

/**
 * Servlet implementation class DeleteProductsServlet
 */
@WebServlet(urlPatterns={"/DeleteProductsServlet"})
public class DeleteProductsServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
    public DeleteProductsServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String pid = request.getParameter("id");
		System.out.println(pid);
		//刪除此項目
		MyCart mycart = (MyCart)request.getSession().getAttribute("mycart");
		mycart.deleteProduct(pid);
		//刪除Session中的項目
		/*ArrayList<Products> list = mycart.excuteQuery();
		
		HttpSession s = (HttpSession)request.getSession().getAttribute("userSession");
		
		s.setAttribute("userlist", list);
		*/
		request.setAttribute("userlist",mycart.excuteQuery());
		
		//導向頁面
		request.getRequestDispatcher("/pages/checkout.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
