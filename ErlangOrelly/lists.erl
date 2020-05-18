-module(lists).
-export([product/1]).
 product ([])->0.



% 7> [1,X,2,3,Y]= [1,2,3,4,6].
% ** exception error: no match of right hand side value [1,2,3,4,6]
% 8> X.
% * 1: variable 'X' is unbound
% 9> [1,X,2,3,Y] = [1,2,3,4,6].
% ** exception error: no match of right hand side value [1,2,3,4,6]
% 10> X.                        
% * 1: variable 'X' is unbound
% 11> cls().
% ** exception error: undefined shell command cls/0
% 12> Insert = [2,3,4].
% [2,3,4]
% 13> 
% 13> Full = [1,2,Insert,3].
% [1,2,[2,3,4],3]

%%lists flatten
%%__________________________________________________

% 14> Neat = lists:flatten(Full).
% [1,2,2,3,4,3]
% 15> A =[1,2,3].
% [1,2,3]
% 16> B= [4,5,6].
% [4,5,6]
% 17> ListofLists = [A,B].
% [[1,2,3],[4,5,6]]
% 18> Neat1 = lists:flatten(ListosLists).
% * 1: variable 'ListosLists' is unbound
% 19> Neat1 = lists:flatten(ListofLists).
% [1,2,3,4,5,6]


%%worked on list append  and ++
%%_____________________________________________________


% 20> Combine = list:append(A,B).
% ** exception error: undefined function list:append/2
% 21> Combine = lists:append(A,B).
% [1,2,3,4,5,6]
% 22> COmbine2 = A ++ B.
% [1,2,3,4,5,6]
% 23> Comb = list:append([A,B,ListofLists]).
% ** exception error: undefined function list:append/1
% 24> Comb = lists:append([A,B,ListofLists]).
% [1,2,3,4,5,6,[1,2,3],[4,5,6]]
% 25> Comb = lists:append([A,B,lists:flatten(ListofLists)]).
% ** exception error: no match of right hand side value [1,2,3,4,5,6,1,2,3,4,5,6]
% 26> Comb2 = lists:append([A,B,lists:flatten(ListofLists)]).
% [1,2,3,4,5,6,1,2,3,4,5,6]


%%%%Lists SEquencial (generating a sequence of number)

% Eshell V10.7  (abort with ^G)
% 1> lits:seq(-2,8).
% ** exception error: undefined function lits:seq/2
% 2> lists:seq(-2,8).
% [-2,-1,0,1,2,3,4,5,6,7,8]
% 3> lists:seq($A,$Z).
% "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
% 4> lists:seq($A,$9).
% ** exception error: no function clause matching lists:seq(65,57) (lists.erl, line 243)
% 5> lists:seq($A,$z). 
% "ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz"
% 6> 
% BREAK: (a)bort (A)bort with dump (c)ontinue (p)roc info (i)nfo
%        (l)oaded (v)ersion (k)ill (D)b-tables (d)istribution



