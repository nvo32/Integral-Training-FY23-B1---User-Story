package US.VHN.controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import US.VHN.daoImpl.AgentDAOImpl;
import US.VHN.daoImpl.ClientDAOImpl;
import US.VHN.model.Agent;
import US.VHN.model.Client;

public class CreateAccountController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public CreateAccountController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher("view/agent/CreateAccount.jsp");
		rd.forward(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		System.out.println("========");
		String agntnum_div = request.getParameter("agntnum_div"); // agentCode
		String clntsel = request.getParameter("clntsel"); // client number
		String branch = request.getParameter("branch"); // companyName
		String branchCode = request.getParameter("branchCode"); // companyCode
		String agntnm = request.getParameter("agntnm"); // account name
		String dbtype = request.getParameter("dbtype"); // acountType
		String dbstatus = request.getParameter("dbstatus"); // accountStatus
		String License = request.getParameter("License"); // license

		System.out.println(agntnum_div + "||" + clntsel + " || " + branch + " || " + branchCode + " || " + agntnm
				+ " || " + dbtype + " || " + dbstatus + " || " + License);

		Agent agent = new Agent(agntnum_div, branch, branchCode, agntnm, dbtype,
				License, clntsel, dbstatus);

		AgentDAOImpl agentImpl = new AgentDAOImpl();
		try {
			if (agentImpl.addAgent(agent)) {
				response.sendRedirect("createAgents");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("CreateAccount");
		}

	}
}
