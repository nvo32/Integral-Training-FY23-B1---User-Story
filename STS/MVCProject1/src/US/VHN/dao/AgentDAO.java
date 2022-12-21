package US.VHN.dao;

import java.sql.SQLException;

import US.VHN.model.Agent;

public interface AgentDAO {
	
	public Boolean addAgent (Agent agent) throws SQLException;

	public Boolean updateAgent (Agent agent) throws SQLException;

	public Agent selectAgent (String agent) throws SQLException;
	
}
