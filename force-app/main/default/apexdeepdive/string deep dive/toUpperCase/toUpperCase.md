### Lesson on the `toUpperCase()` Method in Apex

**Introduction to `toUpperCase()`**

In Apex programming, text manipulation is a common task, especially when preparing data for comparison or display. One such text manipulation method is `toUpperCase()`, which is used to convert all the letters in a string to uppercase. This can be particularly useful in situations where case uniformity is necessary, such as when processing user input or generating data to be displayed uniformly across an application.

**How `toUpperCase()` Works**

The `toUpperCase()` method is called on a string instance and returns a new string with all the characters converted to their uppercase form. This method does not change the original string but returns a new one with the modifications, as strings in Apex are immutable (unable to change after it is set).

**Example:**

```apex
String message = 'Hello, world!';
String shout = message.toUpperCase();
System.debug(shout); // Outputs: 'HELLO, WORLD!'
```

In this example, `toUpperCase()` converts every lowercase letter in `message` to its uppercase counterpart, and the result is stored in `shout`.

**Practical Use Case**

Consider a scenario in Salesforce where you are implementing a search feature that allows users to find records based on names, addresses, or other textual attributes. Due to variations in how users may enter these details (e.g., entering "smith", "Smith", "SMITH"), search results can vary widely. To ensure that searches yield consistent and comprehensive results, converting all input data and comparison fields to uppercase before performing queries can be very effective. This method ensures that the search functionality is robust and reliable, regardless of how the search terms are entered.

```apex
String userInput = 'smith';
String searchQuery = userInput.toUpperCase(); // Convert to uppercase

List<Contact> results = [SELECT Id, FirstName, LastName FROM Contact WHERE LastName = :searchQuery];
System.debug('Matching Contacts: ' + results.size());
```

---

### Challenge: Using `toUpperCase()` for Data Consistency

Imagine you are developing a part of a Salesforce application that handles user input for a job application form. The application responses are stored in a custom object, and one of the fields captures the job title of the applicant. To maintain consistency in the database, all job titles need to be stored in uppercase.

**Your task:**
Write code that processes a job title string entered by a user, converts it to uppercase using the `toUpperCase()` method, and stores the result in a variable. You will start with a predefined job title string and need to implement the conversion logic.
