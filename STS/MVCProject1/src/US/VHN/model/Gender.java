package US.VHN.model;

public class Gender {
	private String id;
	private String gender;
	
	public Gender() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Gender(String id, String gender) {
		super();
		this.id = id;
		this.gender = gender;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

}
