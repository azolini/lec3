-module(p12).
-export([decode_modifield/1]).

decode_modifield(Spis)->decode_modifield(Spis,[]).

decode_modifield([{0,_}|T],Rez)->decode_modifield(T,Rez);
decode_modifield([{N,H}|T],Rez)->decode_modifield([{N-1,H}|T],[H|Rez]);
decode_modifield([H|T],Rez)->decode_modifield(T,[H|Rez]);
decode_modifield([],Rez)->p05:reverse(Rez).
