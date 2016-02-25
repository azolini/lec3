-module(bs02).
-export([words/1]).

words(Bintext)->words(Bintext,<<>>).

words(<<" ",Bintext/binary>>,Word)->[Word|words(Bintext,<<>>)];
words(<<>>,Word)->[Word];
words(<<X,Bintext/binary>>,Word)->words(Bintext,<<Word/binary,X>>).


