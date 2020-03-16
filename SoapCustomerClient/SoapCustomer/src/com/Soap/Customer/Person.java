package com.Soap.Customer;

import java.io.Serializable;


public class Person implements Serializable{

	private static final long serialVersionUID = -5577579081118070434L;
	
	private String name;
	private int age;
	private int id;
	private int phonenum;
	private String email;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	public int getphonenum() {
		return phonenum;
		
	}
	public void setphonenum(int phonenum) {
		this.phonenum = phonenum;
	}
	
	public String getemail() {
		return email;
		
	}
	public void setemail(String email) {
		this.email = email;
	}
	
	
	@Override
	public String toString(){
		return id+"::"+name+"::"+age;
	}
	


}
