package runner;

import com.intuit.karate.junit5.Karate;

class RunSampleOutputTest {

    @Karate.Test
    Karate testSampleOutput() {
        //return Karate.run("classpath:features/").tags("@jsonFiles");
        //return Karate.run("classpath:features/").tags("@gorest");
        //return Karate.run("classpath:features/").tags("@header");
        //return Karate.run("classpath:features/").tags("@Oauth");
        return Karate.run("classpath:features/").tags("@method");

    }
}
