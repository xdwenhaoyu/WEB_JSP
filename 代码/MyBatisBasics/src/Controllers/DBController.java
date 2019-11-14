package Controllers;

import java.io.IOException;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.ui.ModelMap;

import dbexample.Address;
import dbexample.AddressDAO;

@Controller
public class DBController {

	@RequestMapping(value = "/list.do")
	public String list(ModelMap model) throws IOException{
		AddressDAO addressDAO = new AddressDAO();
		List<Address> listAddress = addressDAO.findAll();
		model.addAttribute("listAddress", listAddress);
		return "/listAddressTag.jsp";
	}
	
	@RequestMapping(value = "/add.do")
	public String add(String addressLine1, String city, String stateProvinceID, String postalCode, ModelMap model) throws IOException {
		Address address = new Address();	

		address.setAddressLine1(addressLine1);
		address.setCity(city);
		address.setStateProvinceID(Integer.parseInt(stateProvinceID));
		address.setPostalCode(postalCode);	
		AddressDAO addressDAO = new AddressDAO();
		addressDAO.addAddress(address);
		return "/list.do";
	}
		
	@RequestMapping(value = "/delete.do")
	public String delete(Integer addressID, ModelMap model) throws IOException {
		System.out.println("½øÈëÉ¾³ý");
		AddressDAO addressDAO = new AddressDAO();
		addressDAO.deleteAddress(addressID.intValue());
		return "/list.do";
	}
		
	@RequestMapping(value = "/load.do")
	public String load(String addressID, ModelMap model) throws NumberFormatException, IOException {
		AddressDAO addressDAO = new AddressDAO();
		Address address = addressDAO.loadAddress(Integer.parseInt(addressID));
		model.addAttribute("address", address);
		return "/UpdateAddress.jsp";
	}
	
	@RequestMapping(value = "/update.do")
	public String update(String addressID, String addressLine1, String city, String stateProvinceID, String postalCode, ModelMap model) throws IOException {
		Address address = new Address();
		address.setAddressID(Integer.parseInt(addressID));
		address.setAddressLine1(addressLine1);
		address.setCity(city);
		address.setStateProvinceID(Integer.parseInt(stateProvinceID));
		address.setPostalCode(postalCode);
		AddressDAO addressDAO = new AddressDAO();
		addressDAO.updateAddress(address);
		return "/list.do";
	}
}
