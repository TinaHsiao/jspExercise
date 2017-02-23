package ch05_07;

public class Cat {

	private String catName;
	private int weight;	
	
	
	public Cat(int weight,String catName){
		this.catName = catName;
		this.weight = weight;
	}
	
	
	public String getCatName() {
		return catName;
	}


	public void setCatName(String catName) {
		this.catName = catName;
	}


	public int getWeight() {
		return weight;
	}


	public void setWeight(int weight) {
		this.weight = weight;
	}

}
