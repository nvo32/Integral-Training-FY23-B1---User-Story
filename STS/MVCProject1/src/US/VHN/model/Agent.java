package US.VHN.model;

public class Agent {

	private String ClientNumber;
	private String CompanyName;
	private String CompanyCode;
	private String AccountName;
	private String AccountType;
	private String LicenseNumber;
	private String AgentCode;
	private String AccountStatus;

	public Agent() {
		super();
		// TODO Auto-generated constructor stub
	}

	public Agent(String clientNumber, String companyName, String companyCode, String accountName, String accountType,
			String licenseNumber, String agentCode, String accountStatus) {
		super();
		ClientNumber = clientNumber;
		CompanyName = companyName;
		CompanyCode = companyCode;
		AccountName = accountName;
		AccountType = accountType;
		LicenseNumber = licenseNumber;
		AgentCode = agentCode;
		AccountStatus = accountStatus;
	}

	public String getClientNumber() {
		return ClientNumber;
	}

	public void setClientNumber(String clientNumber) {
		ClientNumber = clientNumber;
	}

	public String getCompanyName() {
		return CompanyName;
	}

	public void setCompanyName(String companyName) {
		CompanyName = companyName;
	}

	public String getCompanyCode() {
		return CompanyCode;
	}

	public void setCompanyCode(String companyCode) {
		CompanyCode = companyCode;
	}

	public String getAccountName() {
		return AccountName;
	}

	public void setAccountName(String accountName) {
		AccountName = accountName;
	}

	public String getAccountType() {
		return AccountType;
	}

	public void setAccountType(String accountType) {
		AccountType = accountType;
	}

	public String getLicenseNumber() {
		return LicenseNumber;
	}

	public void setLicenseNumber(String licenseNumber) {
		LicenseNumber = licenseNumber;
	}

	public String getAgentCode() {
		return AgentCode;
	}

	public void setAgentCode(String agentCode) {
		AgentCode = agentCode;
	}

	public String getAccountStatus() {
		return AccountStatus;
	}

	public void setAccountStatus(String accountStatus) {
		AccountStatus = accountStatus;
	}

}
