### Introduction to the String Class in Apex

**What is a String?**
A String in Apex is a sequence of characters used to handle text. String variables are created by enclosing characters within double quotes (`""`). For example:

```apex
String greeting = 'Hello, World!';
```

Strings can be empty (`""`) or contain spaces (`" "`), which may appear to be empty but are not.

**Understanding the String Class**
The String class in Apex is a built-in system class that provides a wealth of methods to manipulate and analyze text data. These methods can be called on any string instance using the dot (`.`) operator followed by the method name:

```apex
String myString = 'Salesforce';
Boolean containsForce = myString.contains('force'); // returns true
```

### Commonly Used String Methods

Here are some of the essential methods provided by the String class, with examples to illustrate their use:

-   **`toUpperCase()` and `toLowerCase()`**
    Changes the case of the characters in the string.
-   **`trim()`**
    Removes whitespace from the beginning and end of the string.
-   **`substring(startIndex, endIndex)`**
    Returns a substring based on the specified indices.
-   **`contains(searchString)`**
    Checks if the string contains the specified sequence of characters.
-   **`length()`**
    Returns the number of characters in the string.
-   **`startsWith(prefix)` and `endsWith(suffix)`**
    Check if the string starts or ends with the specified substring.
-   **`split(regExp)`**
    Divides the string into an array based on the matches of the regular expression.

### Practical Uses in Salesforce

In Salesforce, string manipulation becomes crucial when dealing with various field types such as Text, Textarea, Picklists, and Email fields. For instance, when processing user inputs or formatting data to be displayed in Visualforce pages or Lightning components.

**Example Use Case: Formatting Emails**
Suppose you want to ensure all email addresses stored in Salesforce are in lowercase for standardization:

```apex
String email = 'Contact@Example.com';
String formattedEmail = email.toLowerCase();
System.debug(formattedEmail); // Outputs: 'contact@example.com'
```

### Conclusion

Mastering the String class methods is vital for efficient text processing in Salesforce development. Through practical examples and regular practice, you can enhance your coding skills and become proficient in handling various data manipulation tasks in Apex.

---

Make sure to include links to official documentation where students can dive deeper, such as the [Salesforce Apex Developer Guide](https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_string.htm).
