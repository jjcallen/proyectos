program quicksort;
uses crt;
const
  MAX = 10;

type
  vector = array[1..MAX] of integer;

var
  v: vector;
  i: integer;

procedure quicksort(var v: vector; izq, der: integer);
  var
    i, j, pivote, aux: integer;
  begin
    i := izq;
    j := der;
    pivote := v[(izq + der) div 2];
    repeat
      while (v[i] < pivote) do
        i := i + 1;
      while (v[j] > pivote) do
        j := j - 1;
      if (i <= j) then
      begin
        aux := v[i];
        v[i] := v[j];
        v[j] := aux;
        i := i + 1;
        j := j - 1;
      end;
    until (i > j);
    if (izq < j) then
      quicksort(v, izq, j);
    if (i < der) then
      quicksort(v, i, der);
  end;

begin
  clrscr;
  randomize;
  for i := 1 to MAX do
    v[i] := random(100);
  writeln('Vector desordenado:');
  for i := 1 to MAX do
    write(v[i], ' ');
  writeln;
  quicksort(v, 1, MAX);
  writeln('Vector ordenado:');
  for i := 1 to MAX do
    write(v[i], ' ');
  readkey;
end.