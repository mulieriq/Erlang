-module(pattern_matching).
-export([fall/1, fall_v1/1, fall_v2/1]).
%so in this module , am making one function o be the  man function that is going to be
%accessed externally


%the third is extcting the elements and assigning them to some variables

fall_v2(Where) ->
    {Planet, Distance} = Where,
    fall_v(Planet,Distance).


%here am exracting elements from a tumple and directly injecting the, to other functions
%matching the atoms
fall_v1(Where)->fall_v(element(1,Where), element(2, Where)).
%in this funcion am receiving a tuple that contains all the elemnts
fall({Planet , Distance}) -> fall_v(Planet, Distance).
%the function receives a tuple and passes the elements to the other inner functions 
%the inner functions are called according to the atoms assigned to them that will be declared once the 
%the main function will be called and assigned a tuple that carries the atoms
%the WHEN keyword is used to check the Element Distance more like an if statement
fall_v(earth ,Distance) when Distance >= 0 -> math:sqrt(2 * 1.9 * Distance);
fall_v(mars ,Distance) when Distance >= 0 -> math:sqrt(2 * 1.2 * Distance).
