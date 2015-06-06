-module(tut9).
-export([test_if/2]).

%Conditions are the same as guards, tests which succeed or fail. 
%Erlang starts at the top until it finds a condition which succeeds and then it evaluates (performs) the action following the condition and ignores all other conditions and action before the end. 
%If no condition matches, there will be a run-time failure. A condition which always is succeeds is the atom, true and this is often used last in an if meaning do the action following the true if all other conditions have failed.


test_if(A, B) ->
    if 
        A == 5 ->
            io:format("A == 5~n", []),
            a_equals_5;
        B == 6 ->
            io:format("B == 6~n", []),
            b_equals_6;
        A == 2, B == 3 ->                      %i.e. A equals 2 and B equals 3
            io:format("A == 2, B == 3~n", []),
            a_equals_2_b_equals_3;
        A == 1 ; B == 7 ->                     %i.e. A equals 1 or B equals 7
            io:format("A == 1 ; B == 7~n", []),
            a_equals_1_or_b_equals_7
    end.
    %Note there is no ";" before end!
    
