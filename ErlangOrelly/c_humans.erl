-module(c_humans).
-export([input/0, term/0]).
input() -> 
    Input = io:read("What is ypur name {Planet , distance} : "),
    %here i take the 2nd element of the result because the INput returns a tuple with ok
    %in the body
    Data = element(2, Input),   
    recursions:fall_v5(Data).




%adding guards to prevent the user  from typing funny things


term() ->
Input = io:read("What {planemo, distance} ? >>"),
process_term(Input).
    process_term({ok, Term}) when is_tuple(Term) ->
    Velocity = drop:fall_velocity(Term),
    io:format("Yields ~w. ~n",[Velocity]),
    term();
    process_term({ok, quit}) ->
    io:format("Goodbye.~n");
    % does not call term() again
    process_term({ok, _}) ->
    io:format("You must enter a tuple.~n"),
    term();
    process_term({error, _}) ->
    io:format("You must enter a tuple with correct syntax.~n"),
    term().