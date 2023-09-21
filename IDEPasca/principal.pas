program Comprobacion_Paridad_Numero;
var
	Numero: integer;
begin
	writeln(' Ingrese un numero entero ');
	readln( Numero );
	if Numero mod 2 = 0 then
		writeln(' El numero es PAR ')
	else
		writeln(' El numero es impar ');
	readln;
end.
