package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Tools.MyCart;



/**
 * Servlet implementation class signOutServlet
 */
@WebServlet(urlPatterns={"/signOutServlet"})
public class signOutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public signOutServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		MyCart mycart = (MyCart)request.getSession().getAttribute("mycart");
		mycart.deleteAll();
		request.getSession().invalidate();
		System.out.println("session清空");
		request.getRequestDispatcher("/pages/index.jsp").forward(request, response);
		return;
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
