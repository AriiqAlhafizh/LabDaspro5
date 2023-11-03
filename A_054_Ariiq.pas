uses crt;

var
 diameter, jari: real;
 tinggi:longint;

const
 pi=3.1416;

 begin
    clrscr;
    write('masukkan diameter / panjang lingkaran (cm): '); //mereka skizo, mungkin lupa apa itu diameter
    readln(diameter);
    write('masukkan tinggi bidang (cm):'); readln(tinggi);

    jari:=diameter/2;

    writeln;
    writeln('volume bangun ruang tersebut adalah ', pi*jari*jari*tinggi:0:4,' cm3');
    writeln('luas permukaan bangun ruang tersebut adalah ', 2*pi*jari*(jari + tinggi):0:4,' cm2');
end.
