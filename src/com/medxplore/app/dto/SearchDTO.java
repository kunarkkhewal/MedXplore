package com.medxplore.app.dto;

import java.util.ArrayList;
import com.medxplore.app.dto.StoreDTO;

public class SearchDTO {
	private String medname;
	private String categoryName;
	private int packSize;
	private float price;
	private ArrayList<String> salts;
	private ArrayList<StoreDTO> stores = new ArrayList<>();
	public String getMedname() {
		return medname;
	}
	public void setMedname(String medname) {
		this.medname = medname;
	}
	public String getCategoryName() {
		return categoryName;
	}
	public void setCategoryName(String categoryName) {
		this.categoryName = categoryName;
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
	public ArrayList<StoreDTO> getStores() {
		return stores;
	}
	public void setStores(ArrayList<StoreDTO> stores) {
		this.stores = stores;
	}

}
