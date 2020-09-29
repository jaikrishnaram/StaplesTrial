public class NewAccountAutomations {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'TEST description';
            return a;
        }
    }

    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = 'Basauri, 6'; 
        a.billingstate = 'Madrid'; 
        a.billingpostalcode ='28023'; 
        return a;
    }
    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = '500 Staples Drive'; 
        a.shippingstate = 'Boston';
        a.shippingpostalcode ='01702';
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