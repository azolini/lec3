-module(p05).
-export([reverse/1]).

reverse([H|T])->reverse(T,[H]).

reverse([],Spis)->Spis;
reverse([H|T],Spis)->reverse(T,[H|Spis]).
