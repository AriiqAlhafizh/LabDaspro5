uses crt;

var
 kabel, musuh: shortint;
 energi: real;
 ungu: boolean;
 buff:string;

begin
    clrscr;
    write('masukkan banyak kabel yang digunakan : '); readln(kabel);
    write('masukkan banyak energi yang digunakan untuk mengeluarkan 1 kabel : '); readln(energi);
    write('masukkan jumlah musuh yang terkena serangan fanny : '); readln(musuh);
    write('apakah fanny mendapat buff (ya/tidak) '); readln(buff);
    writeln;

    buff:=lowercase(buff);
    if (buff='ya') then ungu:=true;
    if (buff='tidak') then ungu:=false;

    if (ungu=true) then begin
        writeln('total keluaran energi fanny adalah ', kabel*energi/2 + musuh*(15/2 - 8):0:0);
    end else if (ungu=false) then begin
        writeln('total keluaran energi fanny adalah ', kabel*energi + musuh*(15 - 8):0:0);
    end;
end.