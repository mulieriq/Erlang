-module(highorderfunctions).
-export([hof/2]).
hof(Value,Function)-> 3 * Function(Value).

% 3> Fun = fun (Value)->20*Value end.
% #Fun<erl_eval.7.126501267>
% 4> highorderfunctions:hof(12,Fun).                        
% 720
% 5> 4> hof:tripler(6,fun(Value)->20*Value end).
% 360


%%%%%%%% Reporting on a List
%_____________________________________________________________________________

% 8> Print = fun(Value) -> io:format(" ~p~n",[Value]) end.
% #Fun<erl_eval.7.126501267>
% 9> List = [1,2,3,4,5,6,7,8,9].
% [1,2,3,4,5,6,7,8,9]
% 10> lists:foreach(Print , List).
%  1
%  2
%  3
%  4
%  5
%  6
%  7
%  8
%  9
% ok
% 11> 

%%%%%%%%%%%Running through list values Through a Function

% 22> Square = fun (Value) -> Value*Value end.
% #Fun<erl_eval.7.126501267>
% 23> lists:map(Square,List).
% [1,4,9,16,25,36,49,64,81]
% 24> [Square(Value) || Value <- List].
% [1,4,9,16,25,36,49,64,81]
% 25> Square(Value) || Value <- List.  
% * 1: syntax error before: '||'
% 25> [Square(Value) || Value <- List].
% [1,4,9,16,25,36,49,64,81]
% 26> [Print(Value) || Value <- List]. 
%  1
%  2
%  3
%  4
%  5
%  6
%  7
%  8
%  9
% [ok,ok,ok,ok,ok,ok,ok,ok,ok]
% 27> [value * Value || Value <- List].
% ** exception error: an error occurred when evaluating an arithmetic expression
%      in operator  */2
%         called as value * 1
% 28> List. 
% [1,2,3,4,5,6,7,8,9]
% 29> [value * Value || Value <- List].
% ** exception error: an error occurred when evaluating an arithmetic expression
%      in operator  */2
%         called as value * 1
% 30> [Print(Value) || Value <- List]. 
%  1
%  2
%  3
%  4
%  5
%  6
%  7
%  8
%  9
% [ok,ok,ok,ok,ok,ok,ok,ok,ok]
% 31> [value * Value || Value <- List].
% ** exception error: an error occurred when evaluating an arithmetic expression
%      in operator  */2
%         ca


%%FIltering Lists 
%_________________________________________________________________________


% 2> Four_bits = fun(Value(Value) -> (Value < 6) and (Value >= 0) end.
% * 1: syntax error before: '('
% 2> Four_bits = fun(Value) -> (Value < 6) and (Value >= 0) end.      
% #Fun<erl_eval.7.126501267>
% 3> lists:filter(four_bits , List).
% ** exception error: no function clause matching lists:filter(four_bits,[1,2,3,4,5,6,7,8,9]) (lists.erl, line 1285)
% 4> Four_bit = fun(Value) -> (Value < 6) and (Value >= 0) end. 
% #Fun<erl_eval.7.126501267>
% 5> lists:filter(four_bit , List).                            
% ** exception error: no function clause matching lists:filter(four_bit,[1,2,3,4,5,6,7,8,9]) (lists.erl, line 1285)
% 6> lists:filter(Four_bit , List).
% [1,2,3,4,5]


%Using list comprehesions
%____________________________________________

% 7> [Value || Value <-List , Value<16 , Value >=0].
% [1,2,3,4,5,6,7,8,9]
% 8> [Value || Value <-List , Value<6 , Value >=0]. 
% [1,2,3,4,5]
% 9> 


%%%Testing lists
%_________________________________________________________________________


% 11> IsInt = fun(Value) -> is_integer(Value) end.
% #Fun<erl_eval.6.111823515>
% 12> lists:all(IsInt, List).
% true
% 13> lists:any(IsInt, List).
% true
% 14> Compare = fun(Value) -> Value > 10 end.
% #Fun<erl_eval.6.111823515>
% 15> lists:any(Compare, List).
% true
% 16> lists:all(Compare, List).
% false

%SPliting lists 

%__________________________________________

