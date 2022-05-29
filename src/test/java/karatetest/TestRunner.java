package karatetest;


import com.intuit.karate.junit5.Karate;

public class TestRunner {
	@Karate.Test
	Karate getDemo(){
		return Karate.run("JsonDemo").relativeTo(getClass());
		
	}

}
