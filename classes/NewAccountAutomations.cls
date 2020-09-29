public class NewAccountAutomations {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'TEST description';
            return a;
        }
    }

    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = '151 Milk St'; 
        a.billingstate = 'Massachusetts'; 
        a.billingpostalcode ='01581'; 
        return a;
    }
    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = '111 W Illinois St'; 
        a.shippingstate = 'Chicago';
        a.shippingpostalcode ='60654';
        return a;
    }
    public static Account setDefaultPhone(Account a) {
        a.Phone='9999999';
        return a;
    }
    public static Account setDefaultURL(Account a) {
        a.website = 'www.copado.com'; 

        return a;
    }
}