### Lesson on the `toLowerCase()` Method in Apex

**Introduction to `toLowerCase()`**

Text manipulation is a frequent necessity in Apex programming, particularly when ensuring data uniformity or preparing data for comparisons. The `toLowerCase()` method in Apex is a straightforward yet powerful tool used to convert all the characters in a string to their lowercase equivalents. This can be crucial for tasks such as data normalization or case-insensitive comparisons.

**How `toLowerCase()` Works**

The `toLowerCase()` method is invoked on a string instance and returns a new string with all characters converted to lowercase. It does not modify the original string; instead, it creates a new one, as strings in Apex are immutable (unable to change after it is set).

**Example:**

```apex
String greeting = 'Hello, World!';
String whisper = greeting.toLowerCase();
System.debug(whisper); // Outputs: 'hello, world!'
```

Here, `toLowerCase()` transforms each uppercase letter in `greeting` into its lowercase form, storing the result in `whisper`.

**Practical Use Case**

A practical application in Salesforce could be during the processing of email addresses. Email addresses are inherently case-insensitive, and normalizing them to lowercase before storage or comparison can enhance data consistency and reliability.

```apex
String email = 'Contact@Example.COM';
String normalizedEmail = email.toLowerCase();
System.debug(normalizedEmail); // Outputs: 'contact@example.com'
```

---
### Challenge: Using `toLowerCase()` for Email Deduplication

You are tasked with cleaning up a list of email addresses in a Salesforce application. Due to various input methods and user errors, the list might contain duplicate emails with different case formats. Using `toLowerCase()`, you can standardize all email addresses to lowercase to help identify and remove duplicates. 

**Your task:**
Write code that processes a list of email strings, converts each to lowercase, and then deduplicates the list. You will start with a predefined list of emails that includes potential duplicates with varying cases. Your method should return a set of strings. 