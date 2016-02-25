-module(p13).
-export([decode/1]).

decode(Spis)->decode(Spis,[]).

decode([{0,_}|T],Rez)->decode(T,Rez);
decode([{N,H}|T],Rez)->decode([{N-1,H}|T],[H|Rez]);
%%decode([H|T],Rez)->decode(T,[H|Rez]);
decode([],Rez)->p05:reverse(Rez).
