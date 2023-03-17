package org.techhub;

import java.util.*;

public class FE {

	private Map maps; 

	public Map getMaps() {
		return maps;
	}

	public void setMaps(Map maps) {
		this.maps = maps;
	}
	
	public void show() {
		Set k=maps.keySet();
		Iterator i = k.iterator();
		
		while(i.hasNext()) {
			Object key =i.next();
			Object value = maps.get(key);
			System.out.println(key+"\t"+value);
		}
	}
}
