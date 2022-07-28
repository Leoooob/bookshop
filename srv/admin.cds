using { leonh.bookshop as my } from '../db/schema';

service AdminService @(requires:'authenticated-user') {
  entity Books @(restrict: [
    {
      grant: ['READ','UPDATE'],
      to: ['BookManager']
    },
    {
      grant: ['*'],
      to: ['Manager']
    }
  ]) as projection on my.Books;
  
  entity Authors @(restrict: [
    {
      grant: ['READ'],
      to: ['BookManager']
    },
    {
      grant: ['*'],
      to: ['Manager']
    }
  ]) as projection on my.Authors;
}