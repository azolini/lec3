-module(p10).
-export([encode/1]).

encode([{X,N}|[X|T]])->encode([{X,N+1}|T]);
encode([{X,N}|T])->[{X,N}|encode(T)];
encode([H|T])->encode([{H,1}|T]);
encode([])->[].
