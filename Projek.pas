program KasirRestoran;
uses crt;

const
JML_MENU     = 5;
PERSEN_PAJAK = 10;

var
pilih, jumlah, persenDiskon : integer;
namaMenu                    : string;
totalBelanja, diskon, setelahDiskon, harga, subtotal : real;
pajak, totalBayar, uangBayar, kembalian : real;

begin
clrscr;
totalBelanja := 0;

writeln('===== DAFTAR MENU =====');
writeln('1. Nasi Goreng  20000');
writeln('2. Mie Goreng   18000');
writeln('3. Ayam Bakar   25000');
writeln('4. Es Teh Manis 5000');
writeln('5. Jus Jeruk    12000');
writeln('0. Selesai memesan');
writeln;

repeat
    write('Pilih nomor menu: ');
    readln(pilih);

    if pilih = 0 then
    begin
        if totalBelanja = 0 then
        writeln('Belum ada pesanan. Pilih minimal 1 menu.');
    end
    else if (pilih >= 1) and (pilih <= JML_MENU) then
    begin
        write('Jumlah porsi: ');
        readln(jumlah);
        if jumlah <= 0 then
        writeln('Jumlah harus lebih dari 0.')
    else
    begin
        case pilih of
        1: begin namaMenu := 'Nasi Goreng';  harga := 20000; end;
        2: begin namaMenu := 'Mie Goreng';   harga := 18000; end;
        3: begin namaMenu := 'Ayam Bakar';   harga := 25000; end;
        4: begin namaMenu := 'Es Teh Manis'; harga := 5000;  end;
        5: begin namaMenu := 'Jus Jeruk';    harga := 12000; end;
        end;
        subtotal := harga * jumlah;
        totalBelanja := totalBelanja + subtotal;
        writeln('  > ', namaMenu, ' x', jumlah, ' : ', harga:0:0 ,
                ' = ', subtotal:0:0);
    end;
    end
    else
    writeln('Nomor menu tidak valid.');
until (pilih = 0) and (totalBelanja > 0);

if totalBelanja >= 100000 then
    persenDiskon := 10
else if totalBelanja >= 50000 then
    persenDiskon := 5
else
    persenDiskon := 0;

diskon        := totalBelanja * persenDiskon / 100;
setelahDiskon := totalBelanja - diskon;
pajak         := setelahDiskon * PERSEN_PAJAK / 100;
totalBayar    := setelahDiskon + pajak;
writeln;
writeln('Total yang harus dibayar: ', totalBayar:0:0);

write('Uang bayar: ');
readln(uangBayar);
while uangBayar < totalBayar do
begin
    writeln('Uang kurang. Masukkan ulang.');
    write('Uang bayar: ');
    readln(uangBayar);
end;

kembalian := uangBayar - totalBayar;

writeln;
writeln('===== STRUK PEMBAYARAN =====');
writeln('Total belanja       : Rp.', totalBelanja:0:0);
writeln('Diskon (', persenDiskon, '%)', '        : Rp.', diskon:0:0);
writeln('Total setelah diskon: Rp.', setelahDiskon:0:0);
writeln('Pajak (', PERSEN_PAJAK, '%)        : Rp.', pajak:0:0);
writeln('Total bayar         : Rp.', totalBayar:0:0);
writeln('Uang bayar          : Rp.', uangBayar:0:0);
writeln('Kembalian           : Rp.', kembalian:0:0);
writeln('Terima kasih');
end.