-module(tut8).

-export([reverse/1]).

reverse(List) ->
    reverse(List, []).

%Consider how Reversed_List is built. It starts as [], we then successively take off the heads of the list to be reversed and add them to the the Reversed_List.
reverse([Head | Rest], Reversed_List) ->
    reverse(Rest, [Head | Reversed_List]);
reverse([], Reversed_List) ->
    Reversed_List.
    
    
    
