List<String> recordIds = new List<String>{'0012A00000BcdefGH', '0012A00000Bcdef', '0012A00000BcdefGHQ'};
int count18CharIds = 0;

for(String id : recordIds) {
    if(id.length() == 18) {
        count18CharIds++;
    }
}

System.debug(count18CharIds); // Outputs the number of 18-character IDs