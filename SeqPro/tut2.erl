-module(tut2).
-export([convert/2]).

%2.3  Atoms
% Atoms are another data type in Erlang. Atoms start with a small letter. 
% For example: charles, centimeter, inch. Atoms are simply names, nothing else. 
% They are not like variables which can have a value.


% useful for converting from inches to centimeters and vice versa.

% The two parts of the convert function are called its clauses.
convert(M, inch) ->
	M / 2.54;

convert(N, centimeter) ->
	N * 2.54.



