package dbexample;

import java.util.List;

public interface AddressMapper {
	public Address loadAddress(int id);

	public List<Address> findAll();

	public void addAddress(Address address);

	public void deleteAddress(int id);
	
	public void updateAddress(Address address);
}
