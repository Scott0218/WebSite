package Controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.store.Model.Services.ContactInter;
import com.store.Model.Services.ContactServices;

/**
 * Servlet implementation class ContectServlet
 */
@WebServlet(urlPatterns={"/ConServlet"})
public class ContactServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ContactServlet() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		//取得資料
		String name = request.getParameter("Cname");
		String mail = request.getParameter("Cmail");
		String tel = request.getParameter("Ctel");
		String message = request.getParameter("Cmessage");
		
		String str1[] = {name,mail,tel,message};
		
		//業務邏輯
		ContactInter ci = new ContactServices();
		ci.Contactsave(str1);
		
		//導向頁面
		response.setCharacterEncoding("text/html;charset=UTF-8");
		String path = request.getContextPath();
		response.sendRedirect(path+"/pages/contact.jsp");
	}

}
