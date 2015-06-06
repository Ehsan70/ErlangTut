-module(tut10).
-export([convert_length/1]).

% Alternative method to write tut2.erl

convert_length(Length) ->
    case Length of
        {centimeter, X} ->
            {inch, X / 2.54};
        {inch, Y} ->
            {centimeter, Y * 2.54}
    end.
    
%Notice that both case and if have return values, i.e. in the above example case returned either {inch,X/2.54} or {centimeter,Y*2.54}. 

%The behaviour of case can also be modified by using guards.
    
    
 
