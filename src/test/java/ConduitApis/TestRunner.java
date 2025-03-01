package ConduitApis;

import com.intuit.karate.junit5.Karate;

public class TestRunner {

        @Karate.Test
    Karate testConduit() {
        return Karate.run("classpath:ConduitApis/features/ConditionalLogics.feature")
      
        .karateEnv("dev");
    }

    

}
