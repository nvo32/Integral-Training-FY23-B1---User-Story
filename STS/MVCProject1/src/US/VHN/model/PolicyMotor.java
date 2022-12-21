package US.VHN.model;

public class PolicyMotor {
	private String polnum;
	private String statdets;
	private String InceptionDate;
	private String ExpiryDate;
	private String PolicyOwner;
	private String EngineNo;
	private String ChassisNo;
	private String VehicleRegisNo;
	private String BillingCurrency;
	private String SumInsured;
	private String Rate;
	private String AnnualPremium;
	private String PostedPremium;
	
	public PolicyMotor() {
		super();
		// TODO Auto-generated constructor stub
	}

	public PolicyMotor(String polnum, String statdets, String inceptionDate, String expiryDate, String policyOwner,
			String engineNo, String chassisNo, String vehicleRegisNo, String billingCurrency, String sumInsured,
			String rate, String annualPremium, String postedPremium) {
		super();
		this.polnum = polnum;
		this.statdets = statdets;
		InceptionDate = inceptionDate;
		ExpiryDate = expiryDate;
		PolicyOwner = policyOwner;
		EngineNo = engineNo;
		ChassisNo = chassisNo;
		VehicleRegisNo = vehicleRegisNo;
		BillingCurrency = billingCurrency;
		SumInsured = sumInsured;
		Rate = rate;
		AnnualPremium = annualPremium;
		PostedPremium = postedPremium;
	}

	public String getPolnum() {
		return polnum;
	}

	public void setPolnum(String polnum) {
		this.polnum = polnum;
	}

	public String getStatdets() {
		return statdets;
	}

	public void setStatdets(String statdets) {
		this.statdets = statdets;
	}

	public String getInceptionDate() {
		return InceptionDate;
	}

	public void setInceptionDate(String inceptionDate) {
		InceptionDate = inceptionDate;
	}

	public String getExpiryDate() {
		return ExpiryDate;
	}

	public void setExpiryDate(String expiryDate) {
		ExpiryDate = expiryDate;
	}

	public String getPolicyOwner() {
		return PolicyOwner;
	}

	public void setPolicyOwner(String policyOwner) {
		PolicyOwner = policyOwner;
	}

	public String getEngineNo() {
		return EngineNo;
	}

	public void setEngineNo(String engineNo) {
		EngineNo = engineNo;
	}

	public String getChassisNo() {
		return ChassisNo;
	}

	public void setChassisNo(String chassisNo) {
		ChassisNo = chassisNo;
	}

	public String getVehicleRegisNo() {
		return VehicleRegisNo;
	}

	public void setVehicleRegisNo(String vehicleRegisNo) {
		VehicleRegisNo = vehicleRegisNo;
	}

	public String getBillingCurrency() {
		return BillingCurrency;
	}

	public void setBillingCurrency(String billingCurrency) {
		BillingCurrency = billingCurrency;
	}

	public String getSumInsured() {
		return SumInsured;
	}

	public void setSumInsured(String sumInsured) {
		SumInsured = sumInsured;
	}

	public String getRate() {
		return Rate;
	}

	public void setRate(String rate) {
		Rate = rate;
	}

	public String getAnnualPremium() {
		return AnnualPremium;
	}

	public void setAnnualPremium(String annualPremium) {
		AnnualPremium = annualPremium;
	}

	public String getPostedPremium() {
		return PostedPremium;
	}

	public void setPostedPremium(String postedPremium) {
		PostedPremium = postedPremium;
	}
}
