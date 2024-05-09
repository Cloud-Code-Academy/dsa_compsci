public with sharing class lengthTest {
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
        TestResult[] execute() {
            TestResult[] results = new List<TestResult>{};
            results.add(test1('1'));
            results.add(test2('2'));
            return results;
        }

        public TestResult test1(String testNum) {
            String testDesc = '[\'0012A00000BcdefGH\', \'0012A00000Bcdef\', \'0012A00000BcdefGHQ\']';
            String msg;

            try {
                lengthSolution ls = new lengthSolution();
                Integer result = ls.count18CharacterStrings(
                    new List<String>{
                        '0012A00000BcdefGH',
                        '0012A00000Bcdef',
                        '0012A00000BcdefGHQ'
                    }
                );
                // StringUtils su = new StringUtils();
                // Integer result = su.count18CharacterStrings(new List<String>{'0012A00000BcdefGH', '0012A00000Bcdef', '0012A00000BcdefGHQ'});
                if (result != 2) {
                    msg = 'Expected 2, received: ' + result;
                }
                return new TestResult(testNum, testDesc, msg == null, msg);
            } catch (Exception e) {
                return new TestResult(testNum, testDesc, false, e.getMessage());
            }
        }

        public TestResult test2(String testNum) {
            String testDesc = '[\'0012A00000BcdefGH\', \'0012A00000BcdefGHQ\', \'0012A00000BBdHxKPO\']';
            String msg;

            try {
                lengthSolution ls = new lengthSolution();
                Integer result = ls.count18CharacterStrings(
                    new List<String>{
                        '0012A00000BcdefGH',
                        '0012A00000Bcdef',
                        '0012A00000BcdefGHQ'
                    }
                );
                if (result != 3) {
                    msg = 'Expected 3, received: ' + result;
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
