import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;
import example.bean.*;

/**
 * Servlet implementation class AddressServlet
 */
@WebServlet(name="/AddressServlet", urlPatterns={"/list.do","/add.do","/delete.do","/load.do","/update.do"})
public class AddressServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//private AddressDAO addressDao = new AddressDAO();   
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddressServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		String url = request.getRequestURI();
		//System.out.println(url);

		String action = request.getRequestURI().substring(url.lastIndexOf('/') + 1, url.lastIndexOf('.'));

		if ("list".equals(action)) {
			List<Address> listAddress = AddressDAO.findAll();
			request.setAttribute("listAddress", listAddress);
			request.getRequestDispatcher("listAddress.jsp").forward(request, response);
		} else if ("add".equals(action)) {
			Address address = new Address();			
			address.setAddressLine1(request.getParameter("addressLine1"));
			address.setCity(request.getParameter("city"));
			address.setStateProvinceID(Integer.parseInt(request.getParameter("stateProvinceID")));
			address.setPostalCode(request.getParameter("postalCode"));			
			AddressDAO.addAddress(address);
			response.sendRedirect("list");
		} else if ("delete".equals(action)) {
			int addressID = Integer.parseInt(request.getParameter("addressID"));
			AddressDAO.deleteAddress(addressID);
			response.sendRedirect("list");
		} else if ("load".equals(action)) {
			Address address = AddressDAO.loadAddress(Integer.parseInt(request.getParameter("addressID")));
			request.setAttribute("address", address);
			request.getRequestDispatcher("addressInfo.jsp").forward(request, response);
		} else if ("update".equals(action)) {
			Address address = new Address();
			address.setAddressLine1(request.getParameter("addressLine1"));
			address.setCity(request.getParameter("city"));
			address.setStateProvinceID(Integer.parseInt(request.getParameter("stateProvinceID")));
			address.setPostalCode(request.getParameter("postalCode"));
			AddressDAO.updateAddress(address);
			response.sendRedirect("list");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
