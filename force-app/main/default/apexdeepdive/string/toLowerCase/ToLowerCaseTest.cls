public with sharing class ToLowerCaseTest {
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
            List<String> emailsInput = new List<String>{
                'test@email.com',
                'WarRen@cloudcodeacademy.COM',
                'maRc@SaleFORCE.com'
            };
            String testDesc = formatEmailList(emailsInput);

            List<String> emailsSolution = new List<String>{
                'test@email.com',
                'warreb@cloudcodeacademy.com',
                'marc@salesforce.com'
            };
            String msg;

            try {
                List<String> result = tlcs.standardizeEmails(emailsInput);

                if (result != emailsSolution) {
                    msg =
                        'Expected ' +
                        emailsSolution +
                        ', received: ' +
                        result;
                }
                return new TestResult(testNum, testDesc, msg == null, msg);
            } catch (Exception e) {
                return new TestResult(testNum, testDesc, false, e.getMessage());
            }
        }

        public TestResult test2(String testNum) {
            List<String> emailsInput = new List<String>{
                null,
                'Another@emaiL.CoM',
                '123Test@TeStER.com'
            };
            String testDesc = formatEmailList(emailsInput);
            List<String> emailsSolution = new List<String>{
                null,
                'another@email.com',
                '123test@tester.com'
            };
            String msg;

            try {
                List<String> result = tlcs.standardizeEmails(emailsInput);
                if (result != emailsSolution) {
                    msg =
                        'Expected ' +
                        emailsSolution +
                        ', received: ' +
                        result;
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
