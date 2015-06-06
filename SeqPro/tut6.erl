-module(tut6).
-export([list_max/1]).

list_max([Head|Rest]) ->
   list_max(Rest, Head).

list_max([], Res) ->
    Res;
    
    % when is a special word we use before the -> in the function to say that we should only use this part of the function if the test which follows is true. We call tests of this type a guard. If the guard isn't true (we say the guard fails), we try the next part of the function. In this case if Head isn't greater than Result_so_far then it must be smaller or equal to is, so we don't need a guard on the next part of the function.
    % Some useful operators in guards are, < less than, > greater than, == equal, >= greater or equal, =< less or equal, /= not equal.
list_max([Head|Rest], Result_so_far) when Head > Result_so_far ->
    list_max(Rest, Head);
list_max([Head|Rest], Result_so_far)  ->
    list_max(Rest, Result_so_far).
    
    
    
    % Remember that I mentioned earlier that a variable could only be given a value once in its scope? In the above we see, for example, that Result_so_far has been given several values. This is OK since every time we call list_max/2 we create a new scope and one can regard the Result_so_far as a completely different variable in each scope.
