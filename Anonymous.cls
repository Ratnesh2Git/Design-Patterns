public with sharing class Anonymous {
    public Anonymous() {

        Folder root = new Folder(0);
        root.addChild(new File(10));
        root.addChild(new File(2));
        root.addChild(new File(5));
        Folder subfolder1 = new Folder(0);
        Folder subfolder2 = new Folder(0);
        Folder subfolder3 = new Folder(0);
        subfolder3.addChild(new File(8));
        subfolder2.addChild(subfolder3);
        subfolder2.addChild(new File(3));
        subfolder1.addChild(subfolder2);
        root.addChild(subfolder1);
        System.debug('total size is'+ root.getSize());

        

    }
}

new Anonymous();