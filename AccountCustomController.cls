public class AccountCustomController {
    
    public PageReference savetheRecord() {
        update account;
        return null;
    }
    
    private final Account account;
    
    public AccountCustomController() {
        account=[SELECT Id, Name, Site from Account where Id = :ApexPages.currentPage().getParameters().get('id')];
    }    

    public Account getAccount() {
        return account;
    }    
}