package testSpring;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import dbexample.Address;
import dbexample.AddressMapper;

@Service
public class AddressService {
    @Autowired
    private AddressMapper addressMapper;
	
	public void print() {
		Address address = addressMapper.loadAddress(1);
		System.out.println(address.getAddressLine1());
	}

}
