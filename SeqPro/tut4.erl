-module(tut4).
-export([list_length/1]).

% 2.5  Lists: 
% Lists in Erlang are surrounded by "[" and "]". 




% See this example: 
%	20> [E1, E2 | R] = [1,2,3,4,5,6,7].
%	[1,2,3,4,5,6,7]
%	21> E1.
%	1
%	22> E2.
%	2
%	23> R.
%	[3,4,5,6,7]


list_length([]) ->
    0; 

list_length([First | Rest]) ->
    1 + list_length(Rest).



% Note: In general we can say we use tuples where we would use
% "records" or "structs" in other languages and we use lists when
% we want to represent things which have varying sizes, (i.e. 
% where we would use linked lists in other languages).




