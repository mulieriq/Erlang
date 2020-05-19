-module(highorderfunctions).
-export([hof/2]).
hof(Value,Function)-> 3 * Function(Value).

% 3> Fun = fun (Value)->20*Value end.
% #Fun<erl_eval.7.126501267>
% 4> highorderfunctions:hof(12,Fun).                        
% 720
% 5> 4> hof:tripler(6,fun(Value)->20*Value end).
% 360
