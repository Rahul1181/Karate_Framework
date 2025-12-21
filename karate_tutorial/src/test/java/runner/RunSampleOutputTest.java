package runner;

import com.intuit.karate.junit5.Karate;

class RunSampleOutputTest {

    @Karate.Test
    Karate testSampleOutput() {
        return Karate.run("classpath:features/").tags("@jsonFiles");

    }
}
