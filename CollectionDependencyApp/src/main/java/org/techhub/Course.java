package org.techhub;

import java.util.List;

public class Course {

	private List TopicLS;

	public List getTopicLS() {
		return TopicLS;
	}
	public void setTopicLS(List topicLS) {
		this.TopicLS = topicLS;
	}
	
	public void show() {
		for(Object obj:TopicLS) {
			System.out.println(obj);
		}
	}
}
