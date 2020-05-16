-module(lists).
-export([product/1]).
product ([])->0;
product(List)->product(List,1).

product([],Product)->Product;
product
    


