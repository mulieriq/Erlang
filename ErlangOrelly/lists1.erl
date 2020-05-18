-module(lists1).
-export([product/1]).

%public entry point

product([])->0;  %in case the list is empty return 0
product(List)->product(List,1).  %%calling the private product functions


product([] , Product)->Product; % when list empty, stop, report

%%if list is not  empty

product([Head|Tail],Product)->product(Tail , (Product*Head)). 

%the same code can be used to perfom addition and other functions in the lit

%%Small Documentation
%%WHat this function does is that it multiplies the number in the given list by the product of the previous number i.e
%[1,2,3,4,5,6,7]
%1*1 = 1
%1*2 = 2, 2 * 3 = 6 , 6*4 -= 24 , 24 *5 = 120 , 120 * 6 = 720, 720 * 7 = 5040