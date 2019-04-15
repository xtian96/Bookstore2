package domain.login;
/**
 * 
 * @author mehra
 * The methods that we need to save and retrieve data from the database
 */
public interface AdminDao {

	/**
	 * 
	 * @param a
	 * @return
	 */
	
	
	public int register(Admin a);
	/*
	 * Retrieve the Admin object from the database
	 */
		public Admin validateAdmin(AdminLogin login);

	
	//public Customer getCustomer(String username, String pass); This method does not needed as we have the Login object

	
}