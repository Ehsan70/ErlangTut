-module(tut7).
-export([format_temps/1]).

format_temps(List_of_cities) ->
    Converted_List = convert_list_to_c(List_of_cities),
    print_temp(Converted_List).

convert_list_to_c([{Name, {f, F}} | Rest]) ->
    Converted_City = {Name, {c, (F -32)* 5 / 9}},
    [Converted_City | convert_list_to_c(Rest)];

convert_list_to_c([City | Rest]) ->
    [City | convert_list_to_c(Rest)];

convert_list_to_c([]) ->
    [].


print_temp([{Name, {c, Temp}} | Rest]) ->
    io:format("~-15w ~w c~n", [Name, Temp]),
    print_temp(Rest);

print_temp([]) ->
    ok.
    
    
%Here we see that format_temps/1 calls convert_list_to_c/1. convert_list_to_c/1 takes off the head of the List_of_cities, converts it to Celsius if needed. The | operator is used to add the (maybe) converted to the converted rest of the list:

  %[Converted_City | convert_list_to_c(Rest)];
  %or
  %[City | convert_list_to_c(Rest)];

%We go on doing this until we get to the end of the list (i.e. the list is empty):

  %convert_list_to_c([]) ->
  %    [].
