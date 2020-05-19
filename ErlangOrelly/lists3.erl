-module(lists3).
-export([addrow/1]).
addrow(Initial) -> addrow(Initial , 0 ,[]).

addrow([],0,Final) -> [ 0| Final]; 
addrow([H|T], Last , New ) -> addrow(T,H,[Last + H | New]).


%%this block of code takes a list i.e [0,1,0] and returns  [0,1,1,0] , creating a spefic pascals triangle row
%from its predicessor, i.e [0,1,1,0] then [0,1,2,1,0]