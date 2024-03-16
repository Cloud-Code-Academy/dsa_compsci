/**
 * Created by bjohnson on 3/16/24.
 */

public with sharing class StringChallenges {
   public class StringChallengesException extends Exception {}
    /**
     * Given a string return the same string with all letters in upper case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to upper case
     * @return the string in upper case
     */
    public static String toUpper(String str) {
        List<Integer> chars = new List<Integer>();
        Integer length = str.length();
        for (Integer i = 0; i < length; i++) {
            Integer charCode = str.charAt(i);
            if (charCode >= 97 && charCode <= 122) {
                chars.add(charCode - 32);
            } else {
                chars.add(charCode);
            }
        }
        return String.fromCharArray(chars);
    }

    /**
     * Given a string return the same string with all letters in lower case.
     * The string may contain integers and punctuation. They should be ignored.
     * @param str the string to lower case
     * @return the string in lower case
     */
    public static String toLower(String str) {
        //TODO: Implement
        List<Integer> chars = new List<Integer>();
        Integer length = str.length();
        for (Integer i = 0; i < length; i++) {
            Integer charCode = str.charAt(i);
            if (charCode >= 65 && charCode <= 90) {
                chars.add(charCode + 32);
            } else {
                chars.add(charCode);
            }
        }
        return String.fromCharArray(chars);
    }

}