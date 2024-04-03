/**
 * Created by bjohnson on 3/16/24.
 * Key concepts Strings are immutable
 * Strings are not iterable
 * String is an object in Apex
 * Three ways to iterate over a string by characters.
 * 1. charAt().. what does this return and why?
 * 2. String.split()
 * 3. Custom Iterator
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
        //Note we could use codePointAt for basic latin alphabet
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

    public static String toLowerWithMap(String str){
        Map<String, String> lowerCaseCharByUpper = new Map<String, String>{
            'A' => 'a',
            'B' => 'b',
            'C' => 'c',
            'D' => 'd',
            'E' => 'e',
            'F' => 'f',
            'G' => 'g',
            'H' => 'h',
            'I' => 'i',
            'J' => 'j',
            'K' => 'k',
            'L' => 'l',
            'M' => 'm',
            'N' => 'n',
            'O' => 'o',
            'P' => 'p',
            'Q' => 'q',
            'R' => 'r',
            'S' => 's',
            'T' => 't',
            'U' => 'u',
            'V' => 'v',
            'W' => 'w',
            'X' => 'x',
            'Y' => 'y',
            'Z' => 'z'
        };
        //often easy to just split string into an array of letters and work with the data that way
        List<String> chars = str.split('');
        Integer size = chars.size();
        for (Integer i = 0; i < size ; i++) {
           if(lowerCaseCharByUpper.containsKey(chars[i])){
               chars[i] = lowerCaseCharByUpper.get(chars[i]);
           }

        }
        return String.join(chars, '');
    }

    public static  String toLowerWithCustomIterable(String str){
        Map<String, String> lowerCaseCharByUpper = new Map<String, String>{
                'A' => 'a',
                'B' => 'b',
                'C' => 'c',
                'D' => 'd',
                'E' => 'e',
                'F' => 'f',
                'G' => 'g',
                'H' => 'h',
                'I' => 'i',
                'J' => 'j',
                'K' => 'k',
                'L' => 'l',
                'M' => 'm',
                'N' => 'n',
                'O' => 'o',
                'P' => 'p',
                'Q' => 'q',
                'R' => 'r',
                'S' => 's',
                'T' => 't',
                'U' => 'u',
                'V' => 'v',
                'W' => 'w',
                'X' => 'x',
                'Y' => 'y',
                'Z' => 'z'
        };
        Iterable<String> stringIterable = new StringIterator(str);
        List<String> results = new List<String>();
        for(String current : stringIterable){
            if(lowerCaseCharByUpper.containsKey(current)){
                results.add(lowerCaseCharByUpper.get(current));
            }else {
                results.add(current);
            }
        }
        return String.join(results, '');
    }

}