package US.VHN.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import US.VHN.dao.PolicyDAO;
import US.VHN.model.Client;
import US.VHN.model.PolicyMotor;

public class PolicyDAOImpl implements PolicyDAO {

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
	public Boolean addPolicy(PolicyMotor policyMotor) throws SQLException {

		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(
						"INSERT INTO PolicyMotor (polnum, statdets, InceptionDate, ExpiryDate, PolicyOwner, EngineNo, ChassisNo, VehicleRegisNo, BillingCurrency, SumInsured, Rate, AnnualPremium, PostedPremium)\r\n"
								+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)")) {
			preparedStatement.setString(1, policyMotor.getPolnum());
			preparedStatement.setString(2, policyMotor.getStatdets());
			preparedStatement.setString(3, policyMotor.getInceptionDate());
			preparedStatement.setString(4, policyMotor.getExpiryDate());
			preparedStatement.setString(5, policyMotor.getPolicyOwner());
			preparedStatement.setString(6, policyMotor.getEngineNo());
			preparedStatement.setString(7, policyMotor.getChassisNo());
			preparedStatement.setString(8, policyMotor.getVehicleRegisNo());
			preparedStatement.setString(9, policyMotor.getBillingCurrency());
			preparedStatement.setString(10, policyMotor.getSumInsured());
			preparedStatement.setString(11, policyMotor.getRate());
			preparedStatement.setString(12, policyMotor.getAnnualPremium());
			preparedStatement.setString(13, policyMotor.getPostedPremium());

			preparedStatement.executeUpdate();
			System.out.println(preparedStatement);
			connection.close();
			return true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return true;
		}

	}

	@Override
	public PolicyMotor selectPolicy(String polnum) throws SQLException {
		PolicyMotor policyMotor = null;
		// Step 1: Establishing a Connection
		try (Connection connection = getConnection();
				// Step 2:Create a statement using connection object
				PreparedStatement preparedStatement = connection
						.prepareStatement("select * from PolicyMotor where polnum =?");) {
			preparedStatement.setString(1, polnum);
			System.out.println(preparedStatement);
			// Step 3: Execute the query or update query
			ResultSet rs = preparedStatement.executeQuery();

			// Step 4: Process the ResultSet object.
			while (rs.next()) {
				String statdets = rs.getString("statdets");
				String InceptionDate = rs.getString("InceptionDate");
				String ExpiryDate = rs.getString("ExpiryDate");
				String PolicyOwner = rs.getString("PolicyOwner");
				String EngineNo = rs.getString("EngineNo");
				String ChassisNo = rs.getString("ChassisNo");
				String VehicleRegisNo = rs.getString("VehicleRegisNo");
				String BillingCurrency = rs.getString("BillingCurrency");
				String SumInsured = rs.getString("SumInsured");
				String Rate = rs.getString("Rate");
				String AnnualPremium = rs.getString("AnnualPremium");
				String PostedPremium = rs.getString("PostedPremium");

				policyMotor = new PolicyMotor(polnum, statdets, InceptionDate, ExpiryDate, PolicyOwner, EngineNo,
						ChassisNo, VehicleRegisNo, BillingCurrency, SumInsured, Rate, AnnualPremium, PostedPremium);

			}
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
			return policyMotor;
		}
		return policyMotor;
	}

	@Override
	public Boolean updatePolicy(PolicyMotor policyMotor) throws SQLException {
		try (Connection connection = getConnection();
				PreparedStatement preparedStatement = connection.prepareStatement(
						"UPDATE PolicyMotor SET polnum = ?, statdets = ?, InceptionDate = ?, ExpiryDate = ?, PolicyOwner = ?, EngineNo = ?, "
						+ "ChassisNo = ?, VehicleRegisNo = ?, BillingCurrency = ?, SumInsured = ?, Rate = ?, AnnualPremium = ?, PostedPremium = ?")) {
			preparedStatement.setString(1, policyMotor.getPolnum());
			preparedStatement.setString(2, policyMotor.getStatdets());
			preparedStatement.setString(3, policyMotor.getInceptionDate());
			preparedStatement.setString(4, policyMotor.getExpiryDate());
			preparedStatement.setString(5, policyMotor.getPolicyOwner());
			preparedStatement.setString(6, policyMotor.getEngineNo());
			preparedStatement.setString(7, policyMotor.getChassisNo());
			preparedStatement.setString(8, policyMotor.getVehicleRegisNo());
			preparedStatement.setString(9, policyMotor.getBillingCurrency());
			preparedStatement.setString(10, policyMotor.getSumInsured());
			preparedStatement.setString(11, policyMotor.getRate());
			preparedStatement.setString(12, policyMotor.getAnnualPremium());
			preparedStatement.setString(13, policyMotor.getPostedPremium());

			preparedStatement.executeUpdate();
			System.out.println(preparedStatement);
			connection.close();
			return true;
		} catch (ClassNotFoundException e) {
			System.out.print("PolicyDAOImpl Error");
			e.printStackTrace();
			return false;
		}
	}

	@Override
	public Boolean issuePolicy(String cownsel01) throws SQLException {
		PolicyMotor flag = selectPolicy(cownsel01);
		if (flag.getStatdets().contains("PN")) {
			try (Connection connection = getConnection();
					PreparedStatement preparedStatement = connection.prepareStatement(
							"UPDATE PolicyMotor SET statdets = ? WHERE polnum = ?")) {
				
				preparedStatement.setString(1, "IF");
				preparedStatement.setString(2, cownsel01);
				preparedStatement.executeUpdate();
				System.out.println(preparedStatement);
				connection.close();
				return true;
			} catch (ClassNotFoundException e) {
				System.out.print("PolicyDAOImpl issue Error");
				e.printStackTrace();
				return false;
			}
		}
		else {
			return false;
		}
	}

}
