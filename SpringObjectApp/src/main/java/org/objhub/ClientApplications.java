package org.objhub;

import org.springframework.beans.factory.BeanFactory;
import org.springframework.beans.factory.xml.XmlBeanFactory;
import org.springframework.core.io.ClassPathResource;
import org.springframework.core.io.Resource;

public class ClientApplications {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		
		Resource r= new ClassPathResource("NFile.xml");
		BeanFactory bf = new XmlBeanFactory(r);
		
		//Object obj = bf.grtbeans("t");
		Team t=(Team)bf.getBean("t");
		t.show();
		
		
		
	}

}

