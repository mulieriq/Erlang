-module(recursions).
-export([fall_v/2 , fall_v2/2, fall_v3/2, fall_v4/1,fall_v5/1 ,countup/1]).
%-import(person , [get_username /1]).

%guard inside the function
fall_v(Planet ,Distance) when Distance >= 0 ->
    case Planet of
        earth  -> math:sqrt(2 * 908 * Distance);
        mars -> math:sqrt(3 * 3 *Distance)
    end. 

%Passing return from a functions to another function / operation
fall_v2(Planet, Distance) when Distance >= 0 ->
    Gravity = case Planet of
                    earth -> 32;
                    mars -> 32
                end,
                math:sqrt(Gravity * 2 * Distance).
            
%Here we added the gaurd (WHEN) within the case statement
fall_v3(Planet, Distance) ->
 Gravity =  case Planet of 
        earth  when Distance >= 0 -> 40;
        mars  when Distance >= 20 ->400
     end,
     math:sqrt(Gravity * 2 * Distance).


%in this phase we are going too add if statement to filter in bound elements

fall_v4(Where) ->
    {Planet , Distance} = Where,
        Gravity = case Planet of 
                    mars when Distance  =< 0 -> 100;
                    earth when Distance  >= 0 -> 1120
    end,
    Velocity = math:sqrt(Gravity *  8 * Distance),
    User =   person:get_username("Dennis "),
    
if
    Velocity  == 0 -> string:concat(User, "U are Not Driving  ") ;
    Velocity  > 0  , Velocity =< 50 -> string:concat(User, "You are driving slowly");
    Velocity  > 80, Velocity =< 150 ->   string:concat(User, "Red zone man");
    Velocity  >= 210 -> string:concat(User, "See You In Heaven")

end.

%here we capture thre result of the if statement

fall_v5(Where) ->
    {Planet , Distance} = Where,
        Gravity = case Planet of 
                    mars when Distance  =< 0 -> 100;
                    earth when Distance  >= 0 -> 1120
    end,
    Velocity = math:sqrt(Gravity *  8 * Distance),
    User =   person:get_username("Dennis "),
    
   Description = if
    Velocity  == 0 -> string:concat(User, "U are Not Driving  ") ;
    Velocity  > 0  , Velocity =< 50 -> string:concat(User, "You are driving slowly");
    Velocity  > 80, Velocity =< 150 ->   string:concat(User, "Red zone man");
    Velocity  >= 210 -> string:concat(User, "See You In Heaven")

end,

%so the [~n]  creats a new line in the console
%and the [~w] take in a number or an atom
%and  [~s ] prints out a bunch of strings
io:format("Returning Results of If statements:~n ~s ~n",[Description]),
io:format("Look out below ~w is too low on ~w.~n",[Distance , Planet]),
countdown(Distance).


%%%%%%%%%%%%%%Adding some loops decrement

countdown(From) when From > 0 ->
    io:format("~w!~n",[From]),
    countdown(From-1);

 countdown(From)->
     io:format("Blast off After ~w Seconds !~n",[From]).

countup(Range) ->
    countup(1 , Range).

%%%%%%%%%%%%%%Adding some loops decrement

countup(Count , Range) when Count =< Range ->
    io:format("~w!~n",[Count]),
    countup(Count +1 , Range);

countup(Count , Range)->
    io:format("Finidhed . ~n").   
 