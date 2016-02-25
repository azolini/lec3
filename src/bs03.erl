-module(bs03).
-export([split/2]).

split(Bintext,Delimetr)->split(Bintext,Delimetr,<<>>,[],Delimetr).
split(<<X,Bintext/binary>>,[H|T],Word,Rez,Delimetr)->
   case X of
      H when T =:= []->split(Bintext,Delimetr,<<>>,[Word|Rez],Delimetr);
      H->split(Bintext,T,Word,Rez,Delimetr);
      %%H when T =:= []->split(Bintext,Delimetr,<<>>,[Word|Rez],Delimetr);
      X->split(Bintext,Delimetr,<<Word/binary,X>>,Rez,Delimetr)
   end;
split(<<>>,_,Word,Rez,_)->p05:reverse([Word|Rez]).   
   



