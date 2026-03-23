using {
    cuid,
    managed
} from '@sap/cds/common';
namespace tutorial.db;

entity Books : cuid, managed {
    title  : String;
    author : Association to Authors;
}

entity Authors : cuid, managed {
    name : String;
    books : Association to  many Books on books.author = $self;
}
