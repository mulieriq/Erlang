-module(hello).
-export([hi/1]).
hi(X)->io:fwrite(X).