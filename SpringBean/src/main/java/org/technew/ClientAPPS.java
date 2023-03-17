package org.technew;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ClientAPPS {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Resource r= new ClassPathResource("newFile.xml");
		BeanFactory bf = new XmlBeanFactory(r);
		
		Employee emp= (Employee)bf.getBean("e");
		emp.show();

	}

}
