# Kelompok 7 – Program Kasir Resto (Pascal)

Dokumentasi error, perbaikan, dan hasil akhir program kasir restoran yang ditulis dengan Free Pascal (`Kelompok7_Kasir_Resto.pas`).

## Isi Folder

| File | Keterangan |
|------|------------|
| `Error_1.pdf` | Error 1 – input jumlah porsi tidak divalidasi (jumlah 0 diterima) |
| `Error_1_Fixed.pdf` | Perbaikan Error 1 – `if jumlah <= 0 then ... else begin ... end` |
| `Error_2.pdf` | Error 2 – uang bayar kurang hanya dicek 1x (`if`), kembalian jadi negatif |
| `Error_2_Fixed.pdf` | Perbaikan Error 2 – memakai `while uangBayar < totalBayar do` |
| `Output.pdf` | Contoh output akhir program (struk pembayaran) |

## Ringkasan

### Error 1 – Validasi jumlah porsi
- **Masalah:** tidak ada pengecekan `jumlah <= 0`, sehingga subtotal tetap dihitung walau jumlah = 0 (contoh: `Ayam Bakar x0 : 25000 = 0`).
- **Perbaikan:** tambahkan `if jumlah <= 0 then writeln('Jumlah harus lebih dari 0.') else begin ... end`.

### Error 2 – Validasi uang bayar
- **Masalah:** memakai `if uangBayar < totalBayar then`, hanya menampilkan pesan "Uang kurang." tanpa meminta input ulang. Kembalian menjadi negatif (`Rp.-1000`) dan struk tetap tercetak.
- **Perbaikan:** ganti dengan `while uangBayar < totalBayar do` agar program meminta input uang bayar berulang sampai cukup.

### Output akhir
Contoh pemesanan 2 Es Teh Manis + 1 Mie Goreng: total belanja Rp.28000, pajak 10% Rp.2800, total bayar Rp.30800, uang bayar Rp.35000, kembalian Rp.4200.
