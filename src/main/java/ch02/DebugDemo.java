package ch02;
public class DebugDemo {

	public static void main(String[] args) {
		int k,i,j,y,a,q ;
		int z = 0;
		DebugDemo dd = new DebugDemo();
		dd.sum();
		dd.product();
		System.out.println(z);

	}
	
	public void sum(){
		int total = 0;
		int n;
		for(n=1; n <=10; n++){
			total += n;
		}
		System.out.println("total=" + total);
	}

	
	public void product(){
		long prod = 1;
		for(int n=1; n <=10; n++){
			prod *= n;
		}
		System.out.println("product=" + prod);
	}

	
}
