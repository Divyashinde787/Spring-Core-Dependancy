package org.OverrideClass;

 class A{
	void show() {
	System.out.println("Parent Class=A");	
	}
}
class B extends A{
	@Override
	void show() {
		System.out.println("Child cLass=B");
	}
}
public class AnnotationApplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		B b1 = new B();
		b1.show();
	}

}
