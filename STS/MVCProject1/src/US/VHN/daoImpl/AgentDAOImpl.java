package US.VHN.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import US.VHN.dao.AgentDAO;
import US.VHN.model.Agent;
import US.VHN.model.Client;

public class AgentDAOImpl implements AgentDAO{
	private static String dbURL = "jdbc:sqlserver://localhost:1433;DatabaseName=US_Assignment";
	private static String user = "huynguyen";
	private static String pass = "123456";

	protected Connection getConnection() throws ClassNotFoundException {
		Connection conn = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			DriverManager.registerDriver(new com.microsoft.sqlserver.jdbc.SQLServerDriver());
			conn = DriverManager.getConnection(dbURL, user, pass);
		} catch (SQLException ex) {
			ex.printStackTrace();

		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return conn;
	}

	@Override
	public Boolean addAgent(Agent agent) throws SQLException {
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(
						"INSERT INTO Agent (ClientNumber, CompanyName, CompanyCode, AccountName, AccountType, LicenseNumber, AgentCode, AccountStatus)\r\n"
								+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?)")) {
			preparedStatement.setString(1, agent.getClientNumber());
			preparedStatement.setString(2, agent.getCompanyName());
			preparedStatement.setString(3, agent.getCompanyCode());
			preparedStatement.setString(4, agent.getAccountName());
			preparedStatement.setString(5, agent.getAccountType());
			preparedStatement.setString(6, agent.getLicenseNumber());
			preparedStatement.setString(7, agent.getAgentCode());
			preparedStatement.setString(8, agent.getAccountStatus());
			
			
			preparedStatement.executeUpdate();System.out.println(preparedStatement);
			connection.close();
			return true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return true;
		} 
	}

	@Override
	public Boolean updateAgent(Agent agent) throws SQLException {
		/*
		 * try (Connection connection = getConnection(); PreparedStatement
		 * preparedStatement = connection.prepareStatement(
		 * "UPDATE PolicyMotor SET polnum = ?, statdets = ?, InceptionDate = ?, ExpiryDate = ?, PolicyOwner = ?, EngineNo = ?, "
		 * +
		 * "ChassisNo = ?, VehicleRegisNo = ?, BillingCurrency = ?, SumInsured = ?, Rate = ?, AnnualPremium = ?, PostedPremium = ?"
		 * )) { preparedStatement.setString(1, policyMotor.getPolnum());
		 * preparedStatement.setString(2, policyMotor.getStatdets());
		 * preparedStatement.setString(3, policyMotor.getInceptionDate());
		 * preparedStatement.setString(4, policyMotor.getExpiryDate());
		 * preparedStatement.setString(5, policyMotor.getPolicyOwner());
		 * preparedStatement.setString(6, policyMotor.getEngineNo());
		 * preparedStatement.setString(7, policyMotor.getChassisNo());
		 * preparedStatement.setString(8, policyMotor.getVehicleRegisNo());
		 * preparedStatement.setString(9, policyMotor.getBillingCurrency());
		 * preparedStatement.setString(10, policyMotor.getSumInsured());
		 * preparedStatement.setString(11, policyMotor.getRate());
		 * preparedStatement.setString(12, policyMotor.getAnnualPremium());
		 * preparedStatement.setString(13, policyMotor.getPostedPremium());
		 * 
		 * preparedStatement.executeUpdate(); System.out.println(preparedStatement);
		 * connection.close(); return true; } catch (ClassNotFoundException e) {
		 * System.out.print("PolicyDAOImpl Error"); e.printStackTrace(); return false; }
		 */
		return true;
	}

	@Override
	public Agent selectAgent(String clntnum) throws SQLException {
		Agent agent = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection.prepareStatement("select * from Agent where ClientNumber =?");) {
			preparedStatement.setString(1, clntnum);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String ClientNumber = rs.getString("ClientNumber");
				String CompanyName = rs.getString("CompanyName");
				String CompanyCode = rs.getString("CompanyCode");
				String AccountName = rs.getString("AccountName");
				String AccountType = rs.getString("AccountType");
				String LicenseNumber = rs.getString("LicenseNumber");
				String AgentCode = rs.getString("AgentCode");
				String AccountStatus = rs.getString("AccountStatus");
				
				agent = new Agent(ClientNumber, CompanyName, CompanyCode, AccountName, AccountType,
						LicenseNumber, AgentCode, AccountStatus);
			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return agent;
		}
		return agent; 
	}
}
