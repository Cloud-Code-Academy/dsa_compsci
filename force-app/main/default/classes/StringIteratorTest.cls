/**
 * Created by brooksjohnson on 4/3/24.
 */

@IsTest
private class StringIteratorTest {
    @IsTest
    static void itShouldIteratoverString() {
        Iterator<String> strIter = new StringIterator('Hello World');

        while (strIter.hasNext()) {
            System.debug(strIter.next());
        }
    }
}