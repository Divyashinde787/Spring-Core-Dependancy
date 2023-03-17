package org.techhub;

import org.springframework.beans.factory.DisposableBean;
import org.springframework.beans.factory.InitializingBean;

public class TestHello implements InitializingBean, DisposableBean{

	public TestHello() {
		System.out.println("i am constructor-spring bean instanciated");
	}
	public void destroy() throws Exception {
		System.out.println("i am destroy ");
	}
	public void afterPropertiesSet() throws Exception {
		System.out.println(" i am initializer mtd");  // its call after setter method	
	}
}
