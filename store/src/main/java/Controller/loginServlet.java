
package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.store.Model.Services.UserInterServices;
import com.store.Model.Services.UserServices;

import demo.model.Shopmasters;

/**
 * Servlet implementation class loginServlet
 */

@WebServlet(urlPatterns = {"/loginServlet"})
public class loginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public loginServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//設定瀏覽器編碼
		request.setCharacterEncoding("UTF-8");
		//接收資料
		String id  = request.getParameter("userid");
		String pwd = request.getParameter("pwd");
		
		String [] parameters = {id,pwd};
		UserInterServices ui = new UserServices();
		List<Shopmasters> list = ui.check("from ShopMasters WHERE mid = ? AND pwd = ?", parameters);
		
		System.out.println(list.size());
		String path = request.getContextPath();
		//顯示畫面
		if(!list.isEmpty()&&list.size()==1){
			response.sendRedirect(path + "/pages/endpages/b1.jsp");
		}else{
			response.sendRedirect(path + "/pages/endpages/LoginPage.jsp");
		}
		
	}

}
