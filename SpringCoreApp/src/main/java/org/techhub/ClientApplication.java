package org.techhub;

import org.springframework.core.io.Resource;
import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;

public class ClientApplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Resource r =new ClassPathResource("text.xml");     //load xml file
		BeanFactory bf= new XmlBeanFactory(r); //BeanFactory=interface  AND  CLASS= XmlBeanFactory(r);
		
		Object obj =bf.getBean("e");  //casting,,,, store data inside object
		Employee emp=(Employee)obj;
		
		emp.show();
		
	}

}
