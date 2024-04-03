/**
 * Created by brooksjohnson on 4/3/24.
 */

public with sharing class StringIterator implements Iterable<String>, Iterator<String> {
    private final String source;
    private Integer index = 0;

    public StringIterator(String source){
        this.source = source;
    }
    public Iterator<String> iterator() {
        return this;
    }

    public Boolean hasNext() {
        return this.index < source.length();
    }

    public String next() {
        if(hasNext()){
            String subStr = source.substring(index, index +1);
            index ++;
            return subStr;
        }else {
            throw new NoSuchElementException('String is not available');
        }
    }
}