package Controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.store.Model.Services.OrderServices;

import Tools.MyCart;
import demo.model.Members;
import demo.model.OrdersDetail;

@WebServlet(urlPatterns={"/AddOrderServlet"})
public class AddOrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AddOrderServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//新增一筆訂單並同時新增多筆訂單明細資料
		
		//取得會員資料
		Members mb = (Members)request.getSession().getAttribute("user");
		MyCart mycart = (MyCart)request.getSession().getAttribute("mycart");
		OrderServices os = new OrderServices();

		String oid = "";
		
		try {
			oid = os.submitOrder(mycart, mb);
		} catch (InterruptedException e) {
			e.printStackTrace();
		}
		
		
		System.out.println("訂單編號:" + oid);
		//查詢出訂單資料
		List<OrdersDetail> orderInfo = os.excuteOrderDetail(oid);
		
		
		request.setAttribute("orderDetail", orderInfo);
		//session內容
		HttpSession s = request.getSession();
		s.invalidate();
		//導向畫面
		request.getRequestDispatcher("/pages/shopsuccess.jsp").forward(request, response);
		return;
	}

}
