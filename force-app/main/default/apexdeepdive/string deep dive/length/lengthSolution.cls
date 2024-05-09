public with sharing class LengthSolution {
    public Integer count18CharacterStrings(String[] inputList) {
        final List<String> recordIds = new List<String>{
            '0012A00000BcdefGH',
            '0012A00000Bcdef',
            '0012A00000BcdefGHQ'
        }; //DO NOT CHANGE
        Integer count18CharIds = 0;

        for (String input : inputList) {
            if (input.length() == 18) {
                count18CharIds++;
            }
        }
        return count18CharIds;
    }
}
