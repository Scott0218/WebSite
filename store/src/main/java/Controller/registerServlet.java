package Controller;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.store.Model.Services.UserInterServices;
import com.store.Model.Services.UserServices;

import demo.model.Members;

/**
 * Servlet implementation class registerServlet
 */
@WebServlet(urlPatterns={"/registerServlet"})
public class registerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public registerServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//接收用戶資料

		String mid = request.getParameter("ResId");
		String pwd = request.getParameter("ResPwd");
		String name = request.getParameter("ResName");
		String age = request.getParameter("ResAge");
		String addr = request.getParameter("ResAddress");
		String tel = request.getParameter("ResTel");
		String email = request.getParameter("ResEmail");
		
		Map<String,String> errors = new HashMap<String,String>();
		request.setAttribute("errors", errors);
		//轉換型態
		int Uage = 0;
		if(age!=null && age.trim().length()>0){
			try{
				Uage = Integer.parseInt(age);
			}catch(NumberFormatException e){
				e.printStackTrace();
			}
		}
		
		//判斷帳號是否已存在
		UserInterServices uis = new UserServices();
		String hql = "from Members where mid = ?";
		String para[] = {mid};
		List<Members> list = uis.check(hql, para);
		
		response.setCharacterEncoding("text/html;charset=UTF-8");
		if(list.size()>0 && !list.isEmpty()){
			errors.put("errMid", "此帳號已存在");
			String path = request.getContextPath();
			request.getRequestDispatcher("pages/register.jsp").forward(request, response);
			//加上return 則不運作後續程式碼
			return;
			
		}else{
			//不存在此帳號時才新增
			uis.addMembers(mid, pwd, name, Uage, addr, tel, email);
			String path = request.getContextPath();
			
			response.sendRedirect("pages/index.jsp");
		}
		
		
		
		
		
	}

}
