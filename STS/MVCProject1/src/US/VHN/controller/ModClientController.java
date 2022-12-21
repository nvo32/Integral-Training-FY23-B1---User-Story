package US.VHN.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import US.VHN.daoImpl.ClientDAOImpl;
import US.VHN.model.Client;
import US.VHN.model.Country;
import US.VHN.model.Gender;
import US.VHN.model.MartialStatus;

public class ModClientController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ModClientController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		ClientDAOImpl clients = new ClientDAOImpl();
		List<Country> listCountry = clients.getListCountry();
		List<Gender> listGender = clients.getListGender();
		List<MartialStatus> listMartialStatus = clients.getListMartialStatus();
		request.setAttribute("listCountry", listCountry);
		request.setAttribute("listGender", listGender);
		request.setAttribute("listMartialStatus", listMartialStatus);
		
		RequestDispatcher rd = request.getRequestDispatcher("view/client/ModClient.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String clntnum = request.getParameter("clntnum");		
		String firstname = request.getParameter("firstname");
		String lastname = request.getParameter("lastname");
		String birthday = request.getParameter("birthday");
		//java.util.Date date = new SimpleDateFormat("dd/MM/yyyy").parse(birthday);
		String idNum = request.getParameter("idNum");
		String country = request.getParameter("country");
		String address = request.getParameter("address");
		String martialStatus = request.getParameter("martialStatus");
		String gender = request.getParameter("gender");
		
		System.out.print("==========");
		System.out.println(clntnum + "||" +firstname+ "||" +lastname+ "||"+birthday+ "||" +idNum+ "||" +country+ "||" +address+ "||"+martialStatus+ "||" +gender+ "||");
		
		Client client = new Client(clntnum, firstname, lastname, gender, birthday, idNum,
				 address, martialStatus, country);
		
		ClientDAOImpl clients = new ClientDAOImpl();
		try {
				if(clients.addClient(client)) {
					response.sendRedirect("login");
				}
				
		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("ModClient");
		}
		
	}
}
