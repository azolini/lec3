-module(p11).
-export([encode/1]).

encode([{X,N}|[X|T]])->encode([{X,N+1}|T]);
encode([{X,N}|T])->[{X,N}|encode(T)];
encode([H|[H|T]])->encode([{H,1}|T]);
encode([H|T])->[H|encode(T)];
%%encode([H|T])->encode([{H,1}|T]);
encode([])->[].
