package com.fss.model;

public class Student {
	private int id;
	private String name;
	private int age;
	private boolean gender;
	private String[] subjects;
	
	public Student() {
		
	}
	
	public Student(int id, String name, int age, boolean gender, String[] subjects) {
		this.id = id;
		this.name = name;
		this.age = age;
		this.gender = gender;
		this.subjects = subjects;
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

	public int getAge() {
		return age;
	}

	public void setAge(int age) {
		this.age = age;
	}
	
	public boolean isGender() {
		return gender;
	}

	public void setGender(boolean gender) {
		this.gender = gender;
	}

	public String[] getSubjects() {
		return subjects;
	}

	public void setSubjects(String[] subjects) {
		this.subjects = subjects;
	}
}
