package Book;

public class Book {
	private String title;
	private String ISBN;
	private double price;
	private String author;
	private String link;
	
	public Book(String t, String a, String i, float p, String l){
		title = t;
		author = a;
		ISBN = i;
		price = p;
		link = l;
	}
	public void setTitle(String t)
	{
		title = t;
	}
	public String getTitle()
	{
		return title;
	}
	public void setISBN(String i)
	{
		ISBN = i;
	}
	public String getISBN()
	{
		return ISBN;
	}
	public void setAuthor(String a)
	{
		author = a;
	}
	public String getAuthor()
	{
		return author;
	}
	public void setPrice(double d)
	{
		price = d;
	}
	public double getPrice()
	{
		return price;
	}
	public void setLink(String l)
	{
		link = l;
	}
	public String getLink()
	{
		return link;
	}
}