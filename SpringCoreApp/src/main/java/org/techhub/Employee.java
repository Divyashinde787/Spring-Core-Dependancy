package org.techhub;

public class Employee {
	private int id;
	private int sal;
	private String name;
	
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
	public int getSal() {
		return sal;
	}
	public void setSal(int sal) {
		this.sal = sal;
	}
	
	public void show() {
		System.out.println(name+"\t"+id+"\t"+sal);
	}

}
