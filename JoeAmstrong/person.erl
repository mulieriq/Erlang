-module(person).
-export([init/0]).
init()->io:fwrite(file:list_dir(".")).