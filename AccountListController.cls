// Used by accountCustomListController Visualforce page
public class AccountListController {

    //Instantiate StandardSetController accs
    public ApexPages.StandardSetController accs {
        get {
            if(accs==null) {
                accs = new ApexPages.StandardSetController(Database.getQueryLocator([SELECT Name, AccountNumber, Rating FROM Account]));
            }
            return accs;
        }
        set;
    }
    
    public List<Account> getAccounts() {
        return (List<Account>) accs.getRecords();
    }

}