package US.VHN.model;

import java.sql.Date;

public class Client {
	private String clntnum;
	private String firstname;
	private String lastname;
	private String gender;
	private String birthday;
	private String idNum;
	private String address;
	
	private String marritalStatus;
	private String country;

	public Client() {
		super();
	}

	public Client(String clntnum, String firstname, String lastname, String gender, String birthday, String idNum,
			String address, String marritalStatus, String country) {
		super();
		this.clntnum = clntnum;
		this.firstname = firstname;
		this.lastname = lastname;
		this.gender = gender;
		this.birthday = birthday;
		this.idNum = idNum;
		this.address = address;
		this.marritalStatus = marritalStatus;
		this.country = country;
	}

	public String getClntnum() {
		return clntnum;
	}

	public void setClntnum(String clntnum) {
		this.clntnum = clntnum;
	}

	public String getFirstname() {
		return firstname;
	}

	public void setFirstname(String firstname) {
		this.firstname = firstname;
	}

	public String getLastname() {
		return lastname;
	}

	public void setLastname(String lastname) {
		this.lastname = lastname;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getBirthday() {
		return birthday;
	}

	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}

	public String getIdNum() {
		return idNum;
	}

	public void setIdNum(String idNum) {
		this.idNum = idNum;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getMarritalStatus() {
		return marritalStatus;
	}

	public void setMarritalStatus(String marritalStatus) {
		this.marritalStatus = marritalStatus;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	
}
