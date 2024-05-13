public with sharing class ToUpperCaseTest {
    public class TestException extends Exception {
    }
    public class TestResultException extends Exception {
    }

    public class TestResult {
        public TestResult(String o, String s, Boolean p, String m) {
            order = o;
            scenario = s;
            pass = p;
            message = m;
        }
        public String order;
        public String scenario;
        public Boolean pass;
        public String message;
    }

    public class Solution {
        ToLowerCaseSolution tlcs = new ToLowerCaseSolution();

        TestResult[] execute() {
            TestResult[] results = new List<TestResult>{};
            results.add(test1('1'));
            results.add(test2('2'));
            return results;
        }

        public TestResult test1(String testNum) {
            String input = 'Developer';
            String solution = 'DEVELOPER';
            String testDesc = input;

            String msg;

            try {
                String result = new ToUpperCaseSolution()
                    .convertToUpperCase(input);

                if (result != solution) {
                    msg = 'Expected ' + solution + ', received: ' + result;
                }
                return new TestResult(testNum, testDesc, msg == null, msg);
            } catch (Exception e) {
                return new TestResult(testNum, testDesc, false, e.getMessage());
            }
        }

        public TestResult test2(String testNum) {
            String input = 'Software eng';
            String solution = 'SOFTWARE ENG';
            String testDesc = input;

            String msg;

            try {
                String result = new ToUpperCaseSolution()
                    .convertToUpperCase(input);

                if (result != solution) {
                    msg = 'Expected ' + solution + ', received: ' + result;
                }
                return new TestResult(testNum, testDesc, msg == null, msg);
            } catch (Exception e) {
                return new TestResult(testNum, testDesc, false, e.getMessage());
            }
        }
    }

    public static void runTest() {
        Solution sol = new Solution();
        TestResult[] testResult = sol.execute();
        throw new TestResultException(JSON.serialize(testResult));
    }
}
