-module(p06).
-export([is_palindrome/1]).

is_palindrome(S)-> p05:reverse(S) == S.
