package com.esthetix.demo;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertTrue;

class ApplicationTests {

	@Test
	void greetingTest() {
		Greeting greeting = new Greeting(1, "hello");
		assertTrue(greeting.getId()  == 1);
		assertTrue(greeting.getContent()  == "hello");
	}

}

