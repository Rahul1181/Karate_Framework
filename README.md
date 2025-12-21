# Karate Framework

**Karate Framework** is an **open-source tool** that combines API testing, mocking, performance testing, and UI automation into a single framework. It's built on top of **Cucumber** (Gherkin syntax) but is designed specifically for testing web services, unlike Cucumber which is more generic.

## Key Features & What Makes It Unique

### 1. **No Separate Programming Language Needed**
   - Tests are written in a **behavior-driven development (BDD) style** using Gherkin syntax, but **you don't need to write step definitions** in Java/JavaScript.
   - You write test logic directly in the feature files.

### 2. **All-in-One Solution**
   - **API Testing**: REST, SOAP, GraphQL
   - **Performance Testing**: Built-in Gatling integration
   - **Mocking**: Create HTTP mocks easily
   - **UI Automation**: Basic web automation capabilities
   - **Database Testing**: Direct DB calls from tests

### 3. **Built-in Capabilities** (No extra libraries needed)
   - HTTP client
   - JSON/XML validation
   - Assertions
   - Data-driven testing
   - CSV/JSON/XML reading
   - Calling JavaScript functions
   - Parallel execution

## **Example Karate Test**

```gherkin
Feature: User API tests

Scenario: Get user and validate response
  Given url 'https://api.example.com/users'
  When method GET
  Then status 200
  And match response == { id: '#number', name: 'John Doe', email: '#string' }
  And match response.users[*].age contains only 25 30 35
```

**Run specific feature file in VS terminal** : `mvn test -Dkarate.options="--tags @smoke"`
**Run all the feature file in VS termincal** : `mvn test -Dkarate="src/test/resources/features"`

## **Pros & Cons**

### **Advantages:**
- **Low learning curve** for non-programmers
- **Single framework** for multiple testing needs
- **Concise syntax** - less code than Java/RestAssured
- **Built-in assertions** with powerful matching operators
- **Excellent for JSON/XML** validation
- **Parallel execution** out-of-the-box

### **Disadvantages:**
- **Less flexible** than code-based frameworks
- **Debugging** can be challenging
- **Steeper learning** for complex scenarios
- **Limited community** compared to RestAssured/Postman
- **UI automation** is basic compared to Selenium/Playwright

## **When to Use Karate**

✅ **Good for:**
- Teams adopting BDD
- Mixed-skill teams (testers & developers)
- Projects needing API + performance + mocking in one
- JSON/XML heavy applications
- When you want to avoid maintaining step definitions

❌ **Not ideal for:**
- Complex programming logic in tests
- Teams already invested in code-heavy frameworks
- Pure UI automation needs
- When you need extensive custom reporting

# Run tests
```terminal
mvn test -Dtest=TestRunner
```
