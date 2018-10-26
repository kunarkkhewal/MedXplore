package com.medxplore.app.dto;

import java.util.ArrayList;

public class MedAltDTO {
	private String medname;
	private int packSize;
	private float price;
	private ArrayList<String> salts;
	public String getMedname() {
		return medname;
	}
	public void setMedname(String medname) {
		this.medname = medname;
	}
	public int getPackSize() {
		return packSize;
	}
	public void setPackSize(int packSize) {
		this.packSize = packSize;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public ArrayList<String> getSalts() {
		return salts;
	}
	public void setSalts(ArrayList<String> salts) {
		this.salts = salts;
	}
}
