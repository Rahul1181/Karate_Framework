package runner;

// We need Runner class to run the feature file with more Options
import org.junit.runner.RunWith;
import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;

@RunWith(Cucumber.class)  
@CucumberOptions(
    features = "src/test/resources/features", //path of feature file
    glue = {"stepDefinition"},
    plugin = {"pretty", "html:target/HtmlReports/cucumber-report.html",
                "json:target/JsonReports/cucumber-report.json",
                "junit:target/JunitReports/cucumber-report.xml"},
    monochrome = true  //makes console output more readable
)
public class RunSampleOutputTest {
    
}
