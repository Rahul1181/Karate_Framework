package runner;

import com.intuit.karate.junit5.Karate;

class RunSampleOutputTest {
    @Karate.Test
    Karate goRestApiTest(){
        return Karate.run("classpath:features/goRestAPI.feature").relativeTo(getClass());

    }
    @Karate.Test
    Karate goRestApiHeader(){
        return Karate.run("classpath:features/goRestAPIHeader.feature").relativeTo(getClass());
    }
    
    @Karate.Test
    Karate goRestDelete(){
        return Karate.run("classpath:features/goRestDelete.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate goRestPost(){
        return Karate.run("classpath:features/goRestPost.feature").relativeTo(getClass());
    }

    // @Karate.Test
    // Karate goRestPut(){
    //     return Karate.run("classpath:features/goRestPut.feature").relativeTo(getClass());
    // }

    @Karate.Test
    Karate goRestPutPartTwo(){
        return Karate.run("classpath:features/goRestPutPartTwo.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate jsonObject(){
        return Karate.run("classpath:features/jsonObject.feature").relativeTo(getClass());
    }

    @Karate.Test
    Karate oAuth(){
        return Karate.run("classpath:features/oAuth.feature").relativeTo(getClass());
    }
    @Karate.Test
    Karate sampleOutput(){
        return Karate.run("classpath:features/sampleOutput.feature").relativeTo(getClass());
    }

    // @Karate.Test
    // Karate testSampleOutput() {
    //     //return Karate.run("classpath:features/").tags("@jsonFiles");
    //     //return Karate.run("classpath:features/").tags("@gorest");
    //     //return Karate.run("classpath:features/").tags("@header");
    //     //return Karate.run("classpath:features/").tags("@Oauth");
    //     return Karate.run("classpath:features/").tags("@method");

    // }
    
}
