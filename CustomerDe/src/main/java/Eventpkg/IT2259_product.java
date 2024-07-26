package Eventpkg;

public class IT2259_product {
	
	private int id;
	private String name;
	private String category;
	private double price;
	private String image;
	
	
	public IT2259_product(int id, String name, String category,double price, String image) {
		super();
		this.id = id;
		this.name = name;
		this.category = category;
		this.image = image;
		this.price = price;
	}

	public IT2259_product() {
		
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	@Override
	public String toString() {
		return "IT2259_product [id=" + id + ", name=" + name + ", category=" + category + ", image=" + image + "]";
	}
	
	
}
