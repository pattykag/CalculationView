using {billing as my} from '../db/schema';
using CV_BILLING from '../db/schema';

service api {
    entity Products   as projection on my.Products;
    entity Clients    as projection on my.Clients;
    entity Bills      as projection on my.Bills;

    @readonly
    entity cv_billing as projection on CV_BILLING;
}
