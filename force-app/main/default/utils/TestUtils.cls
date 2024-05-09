public with sharing class TestUtils {
    public static String formatEmailList(List<String> emails) {
        String result = '[';
        for (Integer i = 0; i < emails.size(); i++) {
            if (i > 0) {
                result += ', ';
            }
            result += '\'' + emails[i] + '\'';
        }
        result += ']';
        return result;
    }
}
