/**
 * Composite Pattern 
 * 
 */
public with sharing class Folder implements IFIleSystemElement{

    private Decimal size;
    private List<IFIleSystemElement> children = new List<IFIleSystemElement>();
    public Folder(Decimal size) {
        this.size = size;
    }

    public Decimal getSize() {
        Decimal size = 0;
        for(IFIleSystemElement child : children) {
            size+=child.getSize();
        }
        return size+this.size;
    }

    public void addChild(IFIleSystemElement element) {

        children.add(element);
    }
}