package org.techhub;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ClientApplication {

	public static void main(String[] args) {
		// TODO Auto-generated method stu		
		Resource r = new ClassPathResource("studentFE.xml");
		BeanFactory bf = new XmlBeanFactory(r);
		
		FE f= (FE)bf.getBean("f");
		f.show();	
	}

}
