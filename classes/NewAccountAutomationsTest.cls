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
        System.assertEquals('Basauri, 6', acc.BillingStreet, 'Default BillingStreet is Basauri, 6');
        System.assertEquals('Madrid', acc.BillingState, 'Default BillingState is Madrid');
        System.assertEquals('28023', acc.BillingPostalCode, 'Default BillingPostalCode is 28023');

    }

    @isTest static void testDefaultShippingAddress(){
        Account acc = new Account(Name = 'My Test Account');
        insert acc;
        acc = NewAccountAutomations.setDefaultShippingAddress(acc);

        System.assertEquals('500 Staples Drive', acc.ShippingStreet, 'Default ShippingStreet is 500 Staples Drive');
        System.assertEquals('Boston', acc.ShippingState, 'Default Shippingtate is Boston');
        System.assertEquals('01702', acc.ShippingPostalCode, 'Default ShippingPostalCode is 01702');

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