public class myControllerExtension {
    // acct variable
    private final Account acct;
    
    // constructor
    public myControllerExtension(ApexPages.StandardController stdController) {
        // getRecord built-in in standardController
        this.acct = (Account) stdController.getRecord();
    }
    
    // custom greeting method
    public String getGreeting() {
        return 'HELLO ' + acct.Name + ' (' + acct.Id + ')';
    }
}