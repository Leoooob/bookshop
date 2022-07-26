using { managed } from '@sap/cds/common';
namespace leonh.bookshop;

entity Books : managed {
  key ID : Integer;
  title  : localized String;
  descr  : localized String;
  genre  : Genre;
  author : Association to Authors;
}

entity Authors : managed {
  key ID : Integer;
  name   : String;
  books  : Association to many Books on books.author=$self;
}

type Genre : String enum {
  Fantasy; SciFi; Horror; Mystery;
}