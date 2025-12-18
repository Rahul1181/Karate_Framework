package runner;

import com.intuit.karate.junit5.Karate;

class SampleOutputTest {

    @Karate.Test
    Karate testSampleOutput() {
        return Karate.run("classpath:features/sampleOutput.feature");
    }
}
