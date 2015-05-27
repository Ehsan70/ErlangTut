-module(tut3).
-export([convert_length/1]).

% 2.4  Tuples
% Tuples are surrounded by "{" and "}".
% So we can write {inch,3} to denote 3 inches and {centimeter,5} to denote 5 centimeters

% This moudle is a better standard than the tut2 one. 

convert_length({centimeter, X}) ->
    {inch, X / 2.54};
    % You need the ; after the above line of code. 

convert_length({inch, Y}) ->
    {centimeter, Y * 2.54}.




% Tuples can have as many parts as we want and contain any valid Erlang term. 
% For example, to represent the temperature of various cities of the world we could write:
% {moscow, {c, -10}}
% {cape_town, {f, 70}}
% {paris, {f, 28}}




