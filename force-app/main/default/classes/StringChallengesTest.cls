/**
 * Created by bjohnson on 3/16/24.
 */

@IsTest
private class StringChallengesTest {
    @IsTest
    static void itShouldReturnUpperCaseString() {
        //given
        String input = 'hello';
        String input2 = 'HELLO';
        String input3 = '22Hello!!';
        //when
        String result = StringChallenges.toUpper(input);
        String result2 = StringChallenges.toUpper(input2);
        String result3 = StringChallenges.toUpper(input3);
        //then
        Assert.isTrue('HELLO'  == result, 'Expected HELLO');
        Assert.isTrue('HELLO'  == result2, 'Expected HELLO');
        Assert.isTrue('22HELLO!!'  == result3, 'Expected HELLO!!');
    }

    @IsTest
    static void itShouldReturnLowerCaseString() {
        //given
        String input = 'HELLO';
        String input2 = 'hello';
        String input3 = '22HELLO!!';
        //when
        String result = StringChallenges.toLower(input);
        String result2 = StringChallenges.toLower(input2);
        String result3 = StringChallenges.toLower(input3);
        //then
        Assert.isTrue('hello'  == result, 'Expected hello');
        Assert.isTrue('hello'  == result2, 'Expected hello');
        Assert.isTrue('22hello!!'  == result3, 'Expected hello!!');
    }
    @IsTest
    static void toLowerWithMap(){
        //given
        String input = 'HELLO';
        String input2 = 'hello';
        String input3 = '22HELLO!!';
        //when
        String result = StringChallenges.toLowerWithMap(input);
        String result2 = StringChallenges.toLowerWithMap(input2);
        String result3 = StringChallenges.toLowerWithMap(input3);
        //then
        Assert.isTrue('hello'  == result, 'Expected hello');
        Assert.isTrue('hello'  == result2, 'Expected hello');
        Assert.isTrue('22hello!!'  == result3, 'Expected hello!!');
    }

    @IsTest
    static void toLowerWithCustomIterable(){
        //given
        String source = 'HeLLo!! WoRlD';
        //when
        String result = StringChallenges.toLowerWithCustomIterable(source);
        //then
        Assert.isTrue(result == 'hello!! world');
    }
}