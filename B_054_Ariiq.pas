uses crt;

var
 i,banyak,jumlah,n:integer;

begin
    clrscr;
    write('masukkan batas atas bilangan : '); readln(n);
    writeln;
    banyak:=0;
    jumlah:=0;
    for i:= n downto 1 do begin
        if (i mod 3=0) and (i mod 2=1) then begin
            write(i,' ');
            banyak+=1;
            jumlah+=i;

        end;
    end;
    writeln;
    writeln(banyak);
    writeln(jumlah);
end.
