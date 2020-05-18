-module(lists3).
-export([addrow/1]).
addrow(Initial) -> addrow(Initial , 0 ,[]).

addrow([],0,Final) -> [ 0| Final]; 
addrow([H|T], Last , New ) -> addrow(T,H,[Last + H | New]).