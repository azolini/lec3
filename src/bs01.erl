-module(bs01).
-export([first_word/1]).

first_word(Bintext)->first_word(Bintext,<<>>).

first_word(<<" ",_/binary>>,Word)->Word;
first_word(<<X,Bintext/binary>>,Word)->first_word(Bintext,<<Word/binary,X>>).


