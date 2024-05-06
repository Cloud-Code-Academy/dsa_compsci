### Lesson on the `toUpperCase()` Method in Apex

**Introduction to `toUpperCase()`**

In Apex programming, text manipulation is a common task, especially when preparing data for comparison or display. One such text manipulation method is `toUpperCase()`, which is used to convert all the letters in a string to uppercase. This can be particularly useful in situations where case uniformity is necessary, such as when processing user input or generating data to be displayed uniformly across an application.

**How `toUpperCase()` Works**

The `toUpperCase()` method is called on a string instance and returns a new string with all the characters converted to their uppercase form. This method does not change the original string but returns a new one with the modifications, as strings in Apex are immutable.

**Example:**
```apex
String message = "Hello, world!";
String shout = message.toUpperCase();
System.debug(shout); // Outputs: "HELLO, WORLD!"
```

In this example, `toUpperCase()` converts every lowercase letter in `message` to its uppercase counterpart, and the result is stored in `shout`.

**Practical Use Case**

Consider a scenario in Salesforce where you need to ensure that all email addresses stored in the database are in a standard format. Since email addresses are case-insensitive, converting them to uppercase before storing or comparing them can help maintain consistency.

```apex
String email = "contact@example.com";
String formattedEmail = email.toUpperCase();
System.debug(formattedEmail); // Outputs: "CONTACT@EXAMPLE.COM"
```

### Challenge: Using `toUpperCase()`

Imagine you are developing a part of a Salesforce application that handles user input for a job application form. The application responses are stored in a custom object, and one of the fields captures the job title of the applicant. To maintain consistency in the database, all job titles need to be stored in uppercase.

**Your task:**
Write a piece of Apex code that accepts a string input representing the job title and converts it to uppercase. Declare a variable `jobTitle` and initialize it with the value of a tech role you would like to have. Example: "software engineer", "Salesforce Developer", "Consultant". Convert `jobTitle` to uppercase and store the result in a new variable `formattedJobTitle`. Finally, return `formattedJobTitle`.
