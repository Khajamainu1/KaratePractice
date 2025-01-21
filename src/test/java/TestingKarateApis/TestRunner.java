package TestingKarateApis;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

	@Karate.Test
    Karate testAll() {
        return Karate.run("classpath:TestingKarateApis/CreateAirlineWith_Var.feature").relativeTo(getClass());
    }
	
//	@Karate.Test
//	Karate test()
//	{
//		return Karate.run("classpath:").relativeTo(getClass());
//		
//	}
}