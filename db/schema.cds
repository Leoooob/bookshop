using { managed, sap } from '@sap/cds/common';
namespace leonh.bookshop;

entity Books : managed {
  key ID : Integer;
  title  : localized String;
  descr  : localized String;
  author : Association to Authors;
  genre  : Association to Genres;
  cover  : LargeBinary @Core.MediaType : 'image/png';
}

entity Authors : managed {
  key ID       : Integer;
  name         : String;
  dateOfBirth  : Date;
  dateOfDeath  : Date;
  books        : Association to many Books on books.author = $self;
}

entity Genres : sap.common.CodeList {
  key ID   : Integer;
  parent   : Association to Genres;
  children : Composition of many Genres on children.parent = $self;
}