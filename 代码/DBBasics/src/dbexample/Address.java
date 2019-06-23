package dbexample;


public class Address {
	private int addressID;
	private String addressLine1;
	private String city;
	private int stateProvinceID;
	private String postalCode;
	
	public void setAddressID(int addressID) {
		this.addressID = addressID;
	}
	
	public int getAddressID() {
		return addressID;
	}
	
	public String getAddressLine1() {
		return addressLine1;
	}
	public void setAddressLine1(String addressLine1) {
		this.addressLine1 = addressLine1;
	}
	public String getCity() {
		return city;
	}
	public void setCity(String city) {
		this.city = city;
	}
	public int getStateProvinceID() {
		return stateProvinceID;
	}
	public void setStateProvinceID(int stateProvinceID) {
		this.stateProvinceID = stateProvinceID;
	}
	public String getPostalCode() {
		return postalCode;
	}
	public void setPostalCode(String postalCode) {
		this.postalCode = postalCode;
	}
	
}
