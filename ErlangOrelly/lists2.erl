-module(lists2).
-export([fall/1]). % this functions is taking a list contaning a taple i.e lists2:fall([{earth,45},{mars,500}]).

fall(List)->fall(List,[]).
fall([],Result)->add(Result);  %%%Result
fall([Head|Tail] , Result)->fall(Tail,[recursions:fall_v6(Head) | Result]).

add([])->0;  %this is un used coz there isnt a time the list will be empty
add(List)->add(List , 0).
add([Head|Tail] , Increment)->add( Tail , Head+Increment);
add([],Product)->Product.
