package com.medxplore.app.dto;

import java.util.ArrayList;
import com.medxplore.app.dto.StoreDTO;

public class SearchDTO {
	private String medname;
	private int packSize;
	private float price;
	private String salt;
	private ArrayList<StoreDTO> stores = new ArrayList<>();
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
	public String getSalt() {
		return salt;
	}
	public void setSalt(String salt) {
		this.salt = salt;
	}
	public ArrayList<StoreDTO> getStores() {
		return stores;
	}
	public void setStores(ArrayList<StoreDTO> stores) {
		this.stores = stores;
	}

}
