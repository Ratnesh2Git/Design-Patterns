/**
 * Composite Pattern 
 * 
 */

public with sharing class File implements IFileSystemElement{

    private Decimal size;
    public File(Decimal size) {
        this.size = size;
    }

    public Decimal getSize(){
        return size;
    }
}