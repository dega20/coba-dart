void main() {
 // Variabel tiket yang mungkin null
 String? tiket = null; // Coba ganti nilai ini dengan nilai non-null untuk melihat perbedaannya
 // Pemeriksaan tiket menggunakan Null Safety
 if (tiket != null) {
 print("Tiket valid: $tiket");
 } else {
 print("Pelanggan belum memiliki tiket.");
 }
 // Contoh lanjutan menggunakan Null Safety untuk akses properti/metode yang mungkin null
 // Misalnya, panjang string tiket
 int? panjangTiket = tiket?.length; // Aman meskipun tiket null karena menggunakan operator '?'
 print("Panjang tiket: ${panjangTiket ?? 'Tidak diketahui'}"); // Gunakan '??' untuk nilai default jika null
} 