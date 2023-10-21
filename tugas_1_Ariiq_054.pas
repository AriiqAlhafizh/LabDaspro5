program tugas1;

uses crt,sysutils;

var
nama,nim,fakultas,prodi,jalur,kodefakultas,kodeprodi,nomorurutstr:string;
nomorurutint:integer;
kelas:char;

begin
clrscr;

 write('nama :'); readln(nama);
 write('NIM :'); readln(nim);

nomorurutstr:=nim[7]+nim[8]+nim[9];
nomorurutint:=strtoint(nomorurutstr);
kodefakultas:=nim[3]+nim[4];
kodeprodi:=nim[5]+ nim[6];

case kodefakultas of
'01': begin 
        fakultas:= 'Kedokteran';
        prodi:= 'Pendidikan Kedokteran';
    end;
'02': begin
        fakultas:= 'Hukum';
        prodi:='Ilmu hukum';
    end;
'03': begin
        fakultas:= 'Pertanian';
    case kodeprodi of
    '01': prodi:='Agroteknologi';    
    '02': prodi:='Manajemen Sumberdaya Perairan';    
    '03': prodi:='Agribisnis';    
    '05': prodi:='Teknologi Pangan';    
    '06': prodi:='Peternakan';    
    '08': prodi:='Teknik Pertanian dan Biosistem';    
    '10': prodi:='Agroteknologi (PSDKU)';
    end;
    end;    
'04': begin
        fakultas:= 'Teknik';
    case kodeprodi of
    '01': prodi:='Teknik Mesin';    
    '02': prodi:='Teknik Elektro';    
    '03': prodi:='Teknik Industri';    
    '04': prodi:='Teknik Sipil';    
    '05':prodi:='Teknik Kimia';    
    '06': prodi:='Arsitektur';    
    '07': prodi:='Teknik Lingkungan';
    '31': prodi:='Pendidikan PRofesi Insinyur';
    end;
    end;
'05': begin
        fakultas:= 'Ekonomi dan Bisnis';
    case kodeprodi of
    '01': prodi:='Ekonomi Pembangunan';    
    '02': prodi:='Manajemen';    
    '03': prodi:='Akuntansi';    
    '04': prodi:='Kewirausahaan';
    end;
    end;     
'06': begin
        fakultas:= 'Kedokteran Gigi';
    case kodeprodi of
    '00': prodi:='Sarjana Kedokteran Gigi';    
    '01': prodi:='Profesi Kedokteran Gigi';    
    end;
    end;     
'07': begin
        fakultas:= 'Ilmu Budaya';
     case kodeprodi of
    '01': prodi:='Sastra Indonesia';    
    '02': prodi:='Sastra Melayu';    
    '03': prodi:='Sastra Batak';    
    '04': prodi:='Sastra Arab';    
    '05': prodi:='Sastras Inggirs';    
    '06': prodi:='Ilmu Sejarah';    
    '07': prodi:='Etnomusikologi';
    '08': prodi:='Sastra Jepang';
    '09': prodi:='Perpustakaan dan Sains Informasi';
    '10': prodi:='Bahasa Mandarin';
    end;
    end;
'08': begin
    fakultas:= 'Matematika dan Ilmu Pengetahuan';
    case kodeprodi of
    '01': prodi:='Fisika';    
    '02': prodi:='Kimia';    
    '03': prodi:='Matematika';    
    '05': prodi:='Biologi';
    end;
    end;   
'09': begin
        fakultas:= 'Ilmu Sosial dan Politik';
     case kodeprodi of
    '01': prodi:='Sosiologi';    
    '02': prodi:='Ilmu Kesejahteraan Sosial';    
    '03': prodi:='Ilmu Administrasi Publik';    
    '04': prodi:='Ilmu Komunikasi';    
    '05': prodi:='Antropologi Sosial';    
    '06': prodi:='Ilmu Politik';    
    '07': prodi:='Ilmu Administrasi Bisnis';
    end;
    end;    
'10': begin
        fakultas:= 'Kesehatan Masyarakat';
    case kodeprodi of
    '00': prodi:='Kesehatan Masyarakat';    
    '01': prodi:='Gizi';    
    end;
    end;   
'11': begin
        fakultas:= 'Keperawatan';
    case kodeprodi of
    '01': prodi:='Sarjana Keperawatan';    
    '02': prodi:='Profesi Ners';    
    end;
    end;   
'12': begin
        fakultas:= 'Kehutanan';
        prodi:= 'Kehutanan';
    end;
'13': begin
        fakultas:= 'Psikologi';
        prodi:= 'Psikologi'
    end; 
'14': begin
        fakultas:= 'Ilmu Komputer dan Teknologi Informasi';
    case kodeprodi of
    '01': prodi:='Ilmu Komputer';    
    '02': prodi:='Teknologi Infromasi';    
    end;
    end;   
'15': begin
        fakultas:= 'Farmasi';
        prodi:= 'Farmasi';
    end;
end;

if (nomorurutint mod 3 = 1) then begin kelas:= 'A';
end else if (nomorurutint mod 3 = 2) then begin kelas:= 'B';
end else if (nomorurutint mod 3 = 0) then begin kelas:= 'C';
end;


if (nomorurutint<=30) then begin jalur:='SNBP';
end else if (nomorurutint<=70) then begin jalur:='SNBT';
end else if (nomorurutint>70) then begin jalur:='SMM';
end;

 writeln;
 writeln('nama : ',nama);
 writeln('NIM : ',nim);
 writeln('Fakultas :',fakultas);
 writeln('Prodi :',prodi);
 writeln('stambuk :',nim[1]+nim[2]);
 writeln('Kelas :', kelas);
 writeln('Jalur :',jalur);

end.









