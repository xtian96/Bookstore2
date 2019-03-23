package domain.login;

public interface AdminDao {
	/**
	 * 
	 * @param c
	 * @return
	 */
	public int register(Admin c);
	
	/*
	 * Retrieve the Admin object from the database
	 */
	public Admin validateAdmin(Login login);

	
	//public Admin getAdmin(String username, String pass); This method does not needed as we have the Login object

	
}
