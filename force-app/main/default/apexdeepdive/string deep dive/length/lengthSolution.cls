public with sharing class LengthSolution {
    public Integer count18CharacterStrings(String[] inputList) {
        Integer count18CharIds = 0;

        for (String input : inputList) {
            if (input.length() == 18) {
                count18CharIds++;
            }
        }
        return count18CharIds;
    }
}
