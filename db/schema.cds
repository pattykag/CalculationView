//namespace billing;

context billing {
    entity Clients {
        key ID       : Integer;
            dni      : String(10);
            name     : String(30);
            lastname : String(30);
            bill     : Association to Bills
                           on bill.client = $self;
    }

    entity Products {
        key ID          : Integer;
            productName : String(50);
            bill        : Association to Bills
                              on bill.product = $self;
    }

    entity Bills {
        key ID      : Integer;
            product : Association to Products;
            client  : Association to Clients;
    }
}

@cds.persistence.exists 
@cds.persistence.calcview
Entity ![CV_BILLING] {
key     ![ID]: Integer  @title: 'ID: ID' ; 
key     ![DNI]: String(10)  @title: 'DNI: DNI' ; 
key     ![NAME]: String(30)  @title: 'NAME: NAME' ; 
key     ![LASTNAME]: String(30)  @title: 'LASTNAME: LASTNAME' ; 
key     ![PRODUCTNAME]: String(50)  @title: 'PRODUCTNAME: PRODUCTNAME' ; 
}