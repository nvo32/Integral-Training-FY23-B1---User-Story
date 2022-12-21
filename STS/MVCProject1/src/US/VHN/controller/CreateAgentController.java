package US.VHN.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import US.VHN.daoImpl.AgentDAOImpl;
import US.VHN.daoImpl.ClientDAOImpl;
import US.VHN.daoImpl.PolicyDAOImpl;
import US.VHN.model.Agent;
import US.VHN.model.Client;
import US.VHN.model.PolicyMotor;

public class CreateAgentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CreateAgentController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("view/agent/createAgent.jsp");
		rd.forward(request, response);
	} 
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String clntnum = request.getParameter("clntnum");
		String action = request.getParameter("action");
		
		System.out.print(clntnum);
			
		if (action.contentEquals("A")) {

			response.sendRedirect("CreateAccount");
		}
		if(action.contentEquals("E") && clntnum.isBlank() == false) {
			AgentDAOImpl c = new AgentDAOImpl();
			Agent agnt = new Agent();

			try {
				agnt = c.selectAgent(clntnum);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			if (agnt != null) {
				System.out.print(agnt);
				String ClientNumber = agnt.getClientNumber();
				String CompanyName = agnt.getCompanyName();
				String CompanyCode = agnt.getCompanyCode();
				String AccountName = agnt.getAccountName();
				String AccountType = agnt.getAccountType();
				String LicenseNumber = agnt.getLicenseNumber();
				String AgentCode = agnt.getAgentCode();
				String AccountStatus = agnt.getAccountStatus();
				
				System.out.println(ClientNumber + "||" +CompanyName+ "||" +CompanyCode+ "||"+AccountName+ "||" +AccountType+ "||" +LicenseNumber+ "||" +AgentCode+ "||"+AccountStatus);

				HttpSession session = request.getSession();
				
				session.setAttribute("ClientNumber", ClientNumber);
				session.setAttribute("CompanyName", CompanyName);
				session.setAttribute("CompanyCode", CompanyCode);
				session.setAttribute("AccountName", AccountName);
				session.setAttribute("AccountType", AccountType);
				session.setAttribute("LicenseNumber", LicenseNumber);
				session.setAttribute("AgentCode", AgentCode);
				session.setAttribute("AccountStatus", AccountStatus);

				session.setMaxInactiveInterval(30 * 60);

				response.sendRedirect("EnqAgent");
			} 
		}
		
		if(action.contentEquals("C") && clntnum.isBlank() == false) {
			AgentDAOImpl c = new AgentDAOImpl();
			Agent agnt = new Agent();

			try {
				agnt = c.selectAgent(clntnum);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			if (agnt != null) {
				System.out.print(agnt);
				String ClientNumber = agnt.getClientNumber();
				String CompanyName = agnt.getCompanyName();
				String CompanyCode = agnt.getCompanyCode();
				String AccountName = agnt.getAccountName();
				String AccountType = agnt.getAccountType();
				String LicenseNumber = agnt.getLicenseNumber();
				String AgentCode = agnt.getAgentCode();
				String AccountStatus = agnt.getAccountStatus();
				
				System.out.println(ClientNumber + "||" +CompanyName+ "||" +CompanyCode+ "||"+AccountName+ "||" +AccountType+ "||" +LicenseNumber+ "||" +AgentCode+ "||"+AccountStatus);

				HttpSession session = request.getSession();
				
				session.setAttribute("ClientNumber", ClientNumber);
				session.setAttribute("CompanyName", CompanyName);
				session.setAttribute("CompanyCode", CompanyCode);
				session.setAttribute("AccountName", AccountName);
				session.setAttribute("AccountType", AccountType);
				session.setAttribute("LicenseNumber", LicenseNumber);
				session.setAttribute("AgentCode", AgentCode);
				session.setAttribute("AccountStatus", AccountStatus);

				session.setMaxInactiveInterval(30 * 60);

				response.sendRedirect("ModAgent");
			} 

		} 
			
	}
	
}
