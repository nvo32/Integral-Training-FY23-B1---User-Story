package US.VHN.dao;

import java.sql.SQLException;
import java.util.List;

import US.VHN.model.Client;
import US.VHN.model.Country;
import US.VHN.model.Gender;
import US.VHN.model.MartialStatus;
import US.VHN.model.PolicyMotor;

public interface PolicyDAO {
	
	public Boolean addPolicy(PolicyMotor policyMotor) throws SQLException;

	public PolicyMotor selectPolicy(String cownsel01) throws SQLException;
	
	public Boolean updatePolicy(PolicyMotor policyMotor) throws SQLException;
	
	public Boolean issuePolicy (String cownsel01) throws SQLException;
	
}
