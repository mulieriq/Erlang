-module(lists).
-export([product/1]).
 product ([])->0.


%%Lists
%%________________________________________


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
%____________________________________________________________

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


% Splitting Lists into Heads and Tails
%________________________________________________________________________________

% 1> List = [1,2,3,4,5].
% [1,2,3,4,5]
% 2> [H1|T1]=List.
% [1,2,3,4,5]
% 3> H1.
% 1
% 4> T1.
% [2,3,4,5]
% 5> [H2|T2] = T1.
% [2,3,4,5]
% 6> H2.
% 2
% 7> T2.
% [3,4,5]
% 8> T1.
% [2,3,4,5]
% 9> [H3|T3]= T2.
% [3,4,5]
% 10> H3.
% 3
% 11> t3.
% t3
% 12> T3.
% [4,5]
% 13> [H4|T4] = T3.
% [4,5]
% 14> H4.
% 4
% 15> T4.
% [5]
% 16> [H5|T5] = T4.
% [5]
% 17> H5.
% 5
% 18> T5.
% []
% 19> [H6|T6]=T5.
% ** exception error: no match of right hand side value []
% 20> 


%%List zip und unzip
%zip generates alst of tuples from binding 2 lists of the same length while uzip it reverses

% 1> List1 = [1,2,3,4].
% [1,2,3,4]
% 2> List2 = [a,b,c,d].
% [a,b,c,d]
% 3> TupleList = list:zip(List1,List2).
% ** exception error: undefined function list:zip/2
% 4> TupleList = lists:zip(List1,List2).
% [{1,a},{2,b},{3,c},{4,d}]
% 5> Unzip = lists:unzip(TupleList).
% {[1,2,3,4],[a,b,c,d]}
% 6> Initial = [{1,a},{2,s}].
% [{1,a},{2,s}]


%% keystore acts as a key value per that goes into a list /adds a element with prescrible config



% 7> Second = lists:keystore(3,1,Initial,{3,c}).
% [{1,a},{2,s},{3,c}]
% 8> Third = lists:keystore(3,1,Initial,{3,d}). 
% [{1,a},{2,s},{3,d}]
% 9> Forth = lists:keystore(3,1,{3,d}).        
% ** exception error: undefined function lists:keystore/3
% 10> Forth = lists:keystore(3,{3,d}).  
% ** exception error: undefined function lists:keystore/2
% 11> Forth = lists:keystore({3,d}).  
% ** exception error: undefined function lists:keystore/1

%%key replace just replaces


% 12> Fifth = lists:keyreplace(3,1,Initial,{3,f}).
% [{1,a},{2,s}]
% 13> Third = lists:keystore(3,1,Initial,{3,d}).  
% [{1,a},{2,s},{3,d}]
% 14> Fifth = lists:keyreplace(3,1,Initial,{3,f}).
% [{1,a},{2,s}]
% 15> Fifth = lists:keyreplace(3,1,Initial,{3}).  

%key find finds a value / list /tuple

% 1> Animal  = [{1,lion},{2,dog}].
% [{1,lion},{2,dog}]
% 2> FInd = lists:keyfind(2,1,Animal).
% {2,dog}
% 3> 