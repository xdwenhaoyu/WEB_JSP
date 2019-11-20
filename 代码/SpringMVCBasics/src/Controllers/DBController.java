package Controllers;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.ui.ModelMap;

import dbexample.Address;
import dbexample.AddressDAO;

@Controller
public class DBController {

	@RequestMapping(value = "/list.do")
	public String list(ModelMap model) {
		List<Address> listAddress = AddressDAO.findAll();
		model.addAttribute("listAddress", listAddress);
		return "/listAddressTag.jsp";
	}
	
	@RequestMapping(value = "/add.do")
	public String add(String addressLine1, String city, String stateProvinceID, String postalCode, ModelMap model) {
		Address address = new Address();	

		address.setAddressLine1(addressLine1);
		address.setCity(city);
		address.setStateProvinceID(Integer.parseInt(stateProvinceID));
		address.setPostalCode(postalCode);			
		AddressDAO.addAddress(address);
		return "/list.do";
	}
		
	@RequestMapping(value = "/delete.do")
	public String delete(Integer addressID, ModelMap model) {
		System.out.println("½øÈëÉ¾³ý");
		AddressDAO.deleteAddress(addressID.intValue());
		return "/list.do";
	}
		
	@RequestMapping(value = "/load.do")
	public String load(String addressID, ModelMap model) {
		Address address = AddressDAO.loadAddress(Integer.parseInt(addressID));
		model.addAttribute("address", address);
		return "/UpdateAddress.jsp";
	}
	
	@RequestMapping(value = "/update.do")
	public String update(String addressID, String addressLine1, String city, String stateProvinceID, String postalCode, ModelMap model) {
		Address address = new Address();
		address.setAddressID(Integer.parseInt(addressID));
		address.setAddressLine1(addressLine1);
		address.setCity(city);
		address.setStateProvinceID(Integer.parseInt(stateProvinceID));
		address.setPostalCode(postalCode);
		AddressDAO.updateAddress(address);
		return "/list.do";
	}
}
