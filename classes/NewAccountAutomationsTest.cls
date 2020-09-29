@IsTest
private class NewAccountAutomationsTest {
 @isTest static void testDefaultDescription(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = NewAccountAutomations.setDefaultDescription(acc);
        System.assertEquals('TEST description', acc.Description, 'When description is null, it is updated to Default description');

        acc.Description = 'New Description Manual';
        
        acc = NewAccountAutomations.setDefaultDescription(acc);
        System.assertNotEquals('TEST description', acc.Description, 'When description is NOT null, it is NOT updated to Default description');
    }


    @isTest static void testDefaultBillingAddress(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = NewAccountAutomations.setDefaultBillingAddress(acc);
        System.assertEquals('151 Milk St', acc.BillingStreet, 'Default BillingStreet is 151 Milk St');
        System.assertEquals('Massachusetts', acc.BillingState, 'Default BillingState is Massachusetts');
        System.assertEquals('01581', acc.BillingPostalCode, 'Default BillingPostalCode is 01581');

    }

    @isTest static void testDefaultShippingAddress(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = NewAccountAutomations.setDefaultShippingAddress(acc);

        System.assertEquals('111 W Illinois St', acc.ShippingStreet, 'Default ShippingStreet is 111 W Illinois St');
        System.assertEquals('Chicago', acc.ShippingState, 'Default Shippingtate is Chicago');
        System.assertEquals('60654', acc.ShippingPostalCode, 'Default ShippingPostalCode is 60654');

    }

    @isTest static void testDefaultPhone(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = NewAccountAutomations.setDefaultPhone(acc);

        System.assertEquals('9999999', acc.Phone, 'Default phone number is 9999999');

    }

    @isTest static void testDefaultURL(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = NewAccountAutomations.setDefaultURL(acc);

        System.assertEquals('www.copado.com', acc.Website, 'Default website is www.copado.com');

    }
}