program kal_loop;
uses crt;
label baliklagi,tanya;
var
 jumlah,awal:real;
 i,j:integer;
 lagi:boolean;
 bil:array [1..10000] of real;
 op:char;
 begin
 baliklagi:
 clrscr;
 writeln('==================');
 writeln('Mudie Calculator');
 writeln('==================');
 writeln('Tulis angka 0101 jika ingin menyudahi penghitungan');
 writeln('');jumlah:=0;
 lagi:=true;
 write('Pilih Operasi Perhitungan (+) (-) (*) (/) : ');readln(op);
 if (op = '+') then
 begin
 i:=1;
 clrscr;
 write('Angka berapa yang ingin di tambah = ');
 readln(awal);
 jumlah:=awal;
 repeat
 clrscr;
 write('Masukan bilangan ke-',i,' = ');readln(bil[i]);
 if (bil[i]) = 0101 then
 begin
 lagi:=false;
 bil[i]:=0;
 end;
 jumlah:=jumlah+bil[i];
 write('Hasil dari penjumlahan : ',awal:0:2,' + ');
 for j:=1 to i do
 begin
 if bil[j]=0 then write('0') else write(bil[j]:0:2);
 if (i<>j) then write(' + ') else write(' = ');
 end;
 write(jumlah:0:2);
 writeln;
 i:=i+1;
 readln;
 until lagi=false;
 end
 else if (op = '-') then
 begin
 i:=1;
 clrscr;
 write('Angka berapa yang ingin di kurang = ');
 readln(awal);
 jumlah:=awal;
 repeat
 clrscr;
 write('Masukan bilangan ke-',i,' = ');readln(bil[i]);
 if (bil[i]) = 090 then
 begin
 lagi:=false;
 bil[i]:=0;
 end;
 jumlah:=jumlah-bil[i];
 write('Hasil dari pengurangan : ',awal:0:2,' - ');
 for j:=1 to i do
 begin
 if bil[j]=0 then write('0') else write(bil[j]:0:2);
 if (i<>j) then write(' - ') else write(' = ');
 end;
 write(jumlah:0:2);
 writeln;
 i:=i+1;
 readln;
 until lagi=false;
 end
 else if (op = '*') then
 begin
 i:=1;
 clrscr;
 write('Angka berapa yang ingin di kali = ');
 readln(awal);
 jumlah:=awal;
 repeat
 clrscr;
 write('Masukan bilangan ke-',i,' = ');readln(bil[i]);
 if (bil[i]) = 090 then
 begin
 lagi:=false;
 bil[i]:=1;
 end;
 jumlah:=jumlah*bil[i];
 write('Hasil dari perkalian : ',awal:0:2,' x ');
 for j:=1 to i do
 begin
 if bil[j]=0 then write('0') else write(bil[j]:0:2);
 if (i<>j) then write(' x ') else write(' = ');
 end;
 write(jumlah:0:2);
 writeln;
 i:=i+1;
 readln;
 until lagi=false;
 end
 else if (op = '/') then
 begin
 i:=1;
 clrscr;
 write('Angka berapa yang ingin di bagi = ');
 readln(awal);
 jumlah:=awal;
 repeat
 clrscr;
 write('Masukan bilangan ke-',i,' = ');readln(bil[i]);
 if (bil[i]) = 090 then
 begin
 lagi:=false;
 bil[i]:=1;
 end;
 jumlah:=jumlah/bil[i];
 write('Hasil dari pembagian = ',awal:0:2,' : ');
 for j:=1 to i do
 begin
 if bil[j]=0 then write('0') else write(bil[j]:0:2);
 if (i<>j) then write(' : ') else write(' = ');
 end;
 write(jumlah:0:2);
 writeln;
 i:=i+1;
 readln;
 until lagi=false;
 end
 else
 begin
 writeln(op,' tidak termasuk dalam operasi perhitungan');
 end;
 writeln('Hasil akhir : ',jumlah:0:2);
 readln;
 tanya:
 write('Ingin menghitung lagi [Y/N] ? ');readln(op);
 case (op) of
 'y': goto baliklagi;
 'n': exit;
 else
 begin
 writeln('Pilihan salah! Tulis y atau n');
 readln;
 goto tanya;
 end;
 end;
 end.
