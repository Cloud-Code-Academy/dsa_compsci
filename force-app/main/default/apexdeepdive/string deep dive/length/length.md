### Lesson on the `length()` Method in Apex

**Introduction to `length()`**

Handling string data effectively is crucial in Apex programming, especially when determining the size or length of string data. The `length()` method is essential for retrieving the number of characters in a string, which can be particularly useful for validation, formatting, or processing tasks.

**How `length()` Works**

The `length()` method is called on a string instance and returns the number of characters in the string. This method is straightforward as it simply counts and returns the length of the string without modifying the original string, adhering to the immutability of strings in Apex.

**Example:**

```apex
String message = 'Hello, Salesforce!';
Integer messageLength = message.length();
System.debug(messageLength); // Outputs: 17
```

In this example, `length()` calculates the number of characters in the `message` string, including spaces and punctuation, and stores this count in `messageLength`.

**Practical Use Case**

A common use case in Salesforce is to validate the length of certain fields to ensure they meet specific criteria, such as verifying the length of a Salesforce ID. Salesforce IDs can be either 15 or 18 characters long, with the 18-character version being case-insensitive and thus safer for certain operations that might alter text case.

```apex
String recordId = '0012A00000Bcdef'; // A 15-character Salesforce ID
System.debug(recordId.length()); // Outputs: 15
```

---
### Challenge: Counting 18-Character Salesforce IDs

In many Salesforce applications, it is important to differentiate between 15-character and 18-character IDs, especially when integrating with systems that require the case-insensitive version.

**Your task:**
Write code that processes a list of Salesforce ID strings and counts how many of them are 18 characters long. You will start with a predefined list of IDs that includes both 15-character and 18-character IDs.
