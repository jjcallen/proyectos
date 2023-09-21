program imprimirVectr;

var

  vect: array[1..10] of integer;

  i: integer;

begin

  for i := 1 to 10 do

    vect[i] := i;



  for i := 1 to 10 do

    writeln(vect[i]);

end.
