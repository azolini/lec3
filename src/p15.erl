-module(p15).
-export([replicate/2]).

replicate(Spis,N)->replicate(Spis,N,N).

replicate([_|T],N,0)->replicate(T,N,N);
replicate([H|T],N,N1)->[H|replicate([H|T],N,N1-1)];
replicate([],_,_)->[].
