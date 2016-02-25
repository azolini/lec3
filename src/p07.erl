-module(p07).
-export([flatten/1]).

flatten([H|T])->flatten([H|T],[]).
%% flatten([],S)->[];
flatten([[H|[]]|T],S)->flatten([H|T],S);
flatten([[H|T1]|T],S)->flatten([H|[T1|T]],S);
flatten([H|T],S)->flatten(T,[H|S]);
flatten([],S)->p05:reverse(S).


