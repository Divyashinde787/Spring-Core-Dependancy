package org.techhub;

import org.techhub.Course;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ClientApplicationH {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
			Resource r= new ClassPathResource("course.xml");
			BeanFactory bf = new XmlBeanFactory(r);
		
		//Object obj = bf.grtbeans("c");
		Course c=(Course)bf.getBean("c");
		c.show();
	}

}
