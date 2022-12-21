package US.VHN.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.DecimalFormat;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import US.VHN.daoImpl.ClientDAOImpl;
import US.VHN.daoImpl.PolicyDAOImpl;
import US.VHN.model.Client;
import US.VHN.model.Country;
import US.VHN.model.Gender;
import US.VHN.model.MartialStatus;
import US.VHN.model.PolicyMotor;

public class ModPolicyController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ModPolicyController() {
		super();
	}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		RequestDispatcher rd = request.getRequestDispatcher("view/agent/ModPolicy.jsp");
		rd.forward(request, response);
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String polnum_div = request.getParameter("polnum_div");
		String ctypdesc_div = request.getParameter("ctypdesc_div");
		String statdets_div = "PN";
		String effdateDisp_div = request.getParameter("effdateDisp_div");
		String ownersel = request.getParameter("ownersel");
		String insuredTo = request.getParameter("insuredTo");
		String EngineNo = request.getParameter("EngineNo");
		String ChassisNo = request.getParameter("ChassisNo");
		String RegistrationNo = request.getParameter("RegistrationNo");
		String cntcurr = request.getParameter("cntcurr");
		String SumInsured = request.getParameter("SumInsured");
		String AnnualPremium = request.getParameter("AnnualPremium");
		String Rate = request.getParameter("Rate");
		String PostedPremium = request.getParameter("PostedPremium"); // 14 ctypdesc_div
		double pp = Double.parseDouble(PostedPremium);
		DecimalFormat f = new DecimalFormat("##.00");
		String ppFormat = f.format(pp);

		System.out.print("==========");
		System.out.println(polnum_div + "||" + ctypdesc_div + "||" + statdets_div + "||" + effdateDisp_div + "||"
				+ ownersel + "||" + insuredTo + "||" + EngineNo + "||" + ChassisNo + "||" + RegistrationNo + "||"
				+ cntcurr + "||" + SumInsured + "||" + AnnualPremium + "||" + Rate + "||" + ppFormat + "||");

		PolicyMotor policyMotor = new PolicyMotor(polnum_div, statdets_div, effdateDisp_div, insuredTo, ownersel,
				EngineNo, ChassisNo, RegistrationNo, cntcurr, SumInsured, Rate, AnnualPremium, ppFormat);

		PolicyDAOImpl policy = new PolicyDAOImpl();

		try {
			if (policy.updatePolicy(policyMotor)) {
				response.sendRedirect("login");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			response.sendRedirect("ModPolicy");
		}
		
	}
}
