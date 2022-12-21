package US.VHN.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import US.VHN.daoImpl.ClientDAOImpl;
import US.VHN.model.Client;
import US.VHN.model.User;
import US.VHN.service.UserService;

public class ClientsController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ClientsController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("view/client/clients.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String clntnum = request.getParameter("clntnum");
		String action = request.getParameter("action");
		String secuityno = request.getParameter("secuityno");
		System.out.println(clntnum + action);
		if (action.contentEquals("A")) {
			response.sendRedirect("AddClient");
		}
		if (action.contentEquals("E") && clntnum.isBlank() == false) {
			ClientDAOImpl c = new ClientDAOImpl();
			Client clnt = new Client();

			try {
				clnt = c.selectClient(clntnum);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			if (clnt != null) {
				System.out.print(clnt);
				String firstname = clnt.getFirstname();

				String lastname = clnt.getLastname();
				String gender = clnt.getGender();
				String birthday = clnt.getBirthday();
				String idNum = clnt.getIdNum();
				String address = clnt.getAddress();
				String marritalStatus = clnt.getMarritalStatus();
				String country = clnt.getCountry();
				
				System.out.println(clntnum + "||" +firstname+ "||" +lastname+ "||"+birthday+ "||" +idNum+ "||" +country+ "||" +address+ "||"+marritalStatus+ "||" +gender+ "||");

				HttpSession session = request.getSession();
				
				session.setAttribute("clntnum", clntnum);
				session.setAttribute("firstname", firstname);
				session.setAttribute("lastname", lastname);
				session.setAttribute("gender", gender);
				session.setAttribute("birthday", birthday);
				session.setAttribute("idNum", idNum);
				session.setAttribute("address", address);
				session.setAttribute("marritalStatus", marritalStatus);
				session.setAttribute("country", country);

				session.setMaxInactiveInterval(30 * 60);

				response.sendRedirect("InqClient");
			} 

		} 
		if(action.contentEquals("C") && clntnum.isBlank() == false) {
			ClientDAOImpl c = new ClientDAOImpl();
			Client clnt = new Client();

			try {
				clnt = c.selectClient(clntnum);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			if (clnt != null) {
				System.out.print(clnt);
				String firstname = clnt.getFirstname();

				String lastname = clnt.getLastname();
				String gender = clnt.getGender();
				String birthday = clnt.getBirthday();
				String idNum = clnt.getIdNum();
				String address = clnt.getAddress();
				String marritalStatus = clnt.getMarritalStatus();
				String country = clnt.getCountry();
				
				System.out.println(clntnum + "||" +firstname+ "||" +lastname+ "||"+birthday+ "||" +idNum+ "||" +country+ "||" +address+ "||"+marritalStatus+ "||" +gender+ "||");

				HttpSession session = request.getSession();
				
				session.setAttribute("clntnum", clntnum);
				session.setAttribute("firstname", firstname);
				session.setAttribute("lastname", lastname);
				session.setAttribute("gender", gender);
				session.setAttribute("birthday", birthday);
				session.setAttribute("idNum", idNum);
				session.setAttribute("address", address);
				session.setAttribute("marritalStatus", marritalStatus);
				session.setAttribute("country", country);

				session.setMaxInactiveInterval(30 * 60);

				response.sendRedirect("ModClient");
			} 

		} 

	}

}
