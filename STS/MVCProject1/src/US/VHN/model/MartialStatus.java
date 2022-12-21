package US.VHN.model;

public class MartialStatus {
	private String id;
	private String status;

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public MartialStatus(String id, String status) {
		super();
		this.id = id;
		this.status = status;
	}

	public MartialStatus() {
		super();
		// TODO Auto-generated constructor stub
	}
}
