SysGuard-Lab — P05
Prototipe Pengelolaan Proses Linux

1. Nama Proyek dan Identitas Kelompok
Nama Proyek: SysGuard-Lab
Mata Kuliah: Diagnostik dan Monitoring Linux
Tahap: P05 — Prototipe Pengelolaan Proses
Nomor Kelompok: 4

Anggota Kelompok:

Muhammad Alfridho Pasha — 2510501118
Nabiel Prabaswara M.M.B — 2510501129
Nilam Rahma Sari — 2510501114
Fitri Rahmadaniyah — 2510501124

2. Tujuan Prototipe
Prototipe ini bertujuan membantu pengguna mengidentifikasi dan mengelola proses Linux secara aman. Pengujian mencakup identifikasi PID, PPID, pemilik proses, command, dan process state, pengelolaan foreground dan background process, job control, penggunaan signal, serta pengamatan dan perubahan prioritas proses.
Proyek ini juga bertujuan menguji penanganan kegagalan, melakukan pemulihan, dan memastikan tindakan yang dilakukan tidak memengaruhi proses lain.

3. Perubahan Rancangan dari P04
P05 merupakan pengembangan dari rancangan awal P04. Rancangan diperbarui untuk mencakup identifikasi proses, pengelolaan foreground dan background process, job control, pengujian signal, serta pengamatan dan perubahan nilai nice.
Perubahan yang benar-benar dilakukan beserta alasannya dicatat dalam CHANGELOG.md berdasarkan evaluasi artefak P04.

4. Prasyarat dan Proses Simulasi
Prasyarat
Ubuntu Server sebagai lingkungan pengujian.
Terminal Linux.
Utilitas Linux untuk identifikasi dan pengelolaan proses.
Git untuk pengelolaan versi proyek.
Proses simulasi yang dibuat dan dimiliki oleh kelompok.
Proses Simulasi

Pengujian menggunakan proses simulasi yang dibuat khusus oleh kelompok untuk mengamati identitas, status, hubungan dengan shell, penggunaan signal, dan perubahan prioritas proses.

Command pembuat proses: Diisi sesuai command aktual yang digunakan.
Tujuan simulasi: Menguji pengelolaan proses Linux.
Perkiraan durasi: Disesuaikan dengan proses simulasi.
Cara menghentikan proses: Menggunakan command yang sesuai dengan proses simulasi.
Verifikasi proses selesai: Memeriksa kembali PID dan status proses.

Pengujian hanya dilakukan terhadap proses simulasi milik kelompok, bukan proses sistem atau service penting.

5. Cara Menjalankan Prototipe
Buka terminal Ubuntu Server.
Masuk ke direktori proyek.
Periksa script atau command pada direktori src/.
Jalankan prototipe sesuai implementasi yang tersedia.
Amati output yang dihasilkan.
Verifikasi hasil berdasarkan identitas dan status proses.

Command untuk menjalankan prototipe disesuaikan dengan script yang benar-benar tersedia pada direktori src/.

6. Cara Melakukan Pengujian
Pengujian dilakukan menggunakan test case pada direktori tests/. Skenario pengujian meliputi:

Identifikasi PID, PPID, pemilik proses, command, dan process state.
Pengujian foreground process.
Pengujian background process dan job control.
Perpindahan proses antara foreground dan background.
Pengiriman signal untuk penghentian normal.
Pengujian pause dan continue.
Pengamatan serta perubahan nilai nice.
Pengujian kondisi gagal, seperti PID yang tidak ditemukan.
Pemulihan dan cleanup setelah pengujian.

7. Expected Result

Hasil yang diharapkan dari pengujian:

Proses target dapat diidentifikasi dengan benar.
PID dan job ID dapat dibedakan.
Status foreground dan background dapat diamati.
Signal digunakan sesuai tujuan dan kondisi proses.
Nilai nice sebelum dan sesudah perubahan dapat dibandingkan.
Kondisi gagal dapat didiagnosis dan ditangani.
Proses simulasi dapat dibersihkan setelah pengujian.

Hasil aktual dicatat berdasarkan output pengujian langsung, bukan berdasarkan perkiraan.

8. Cara Memverifikasi Hasil

Verifikasi dilakukan dengan membandingkan expected result dan hasil aktual pada setiap test case.
Pemeriksaan meliputi:

Identitas dan status proses.
Job ID dan PID.
Hasil pengiriman signal.
Nilai nice sebelum dan sesudah perubahan.
Kondisi proses setelah pemulihan dan cleanup.

Bukti berupa command, output teks, log, dan screenshot pendukung disimpan pada direktori evidence/.

9. Risiko
Risiko pengujian meliputi kesalahan pemilihan PID, tertukarnya job ID dengan PID, keterbatasan hak akses, dan tindakan terhadap proses yang tidak sesuai target.
Untuk mengurangi risiko, kelompok memverifikasi PID, nama command, pemilik proses, status proses, dan hubungan proses dengan shell atau proses induknya sebelum melakukan tindakan.
Pengujian hanya dilakukan terhadap proses simulasi milik kelompok. Penghentian normal diprioritaskan sebelum mempertimbangkan signal paksa.

10. Cleanup dan Rollback
Setelah pengujian selesai, kelompok melakukan langkah berikut:

Memastikan seluruh proses simulasi telah selesai.
Memeriksa agar tidak ada background job yang tertinggal.
Menghentikan proses simulasi yang masih berjalan secara aman.
Menyimpan output, log, dan bukti pengujian.
Memastikan proses lain tidak terdampak.
Mendokumentasikan kondisi akhir pada evidence/Cleanup.txt.

Jika terjadi kesalahan selama pengujian, kelompok memeriksa kondisi proses, melakukan koreksi yang sesuai, dan memverifikasi bahwa proses lain tidak terdampak.

11. Batasan Prototipe
Prototipe ditujukan untuk pembelajaran dan pengujian pengelolaan proses Linux di lingkungan Ubuntu Server.
Pengujian dibatasi pada proses simulasi milik kelompok dan tidak ditujukan untuk menghentikan proses sistem, mengendalikan service penting, atau mengubah prioritas proses di luar skenario pengujian.
Perubahan nilai nice tidak selalu langsung mengubah penggunaan CPU karena hasilnya dapat dipengaruhi oleh beban sistem, proses pesaing, scheduler, dan durasi pengamatan.

12. Ringkasan Kontribusi Anggota
Pembagian tugas dan kontribusi setiap anggota dicatat dalam CONTRIBUTION.md.
Kontribusi meliputi perancangan prototipe, implementasi command atau script, pelaksanaan pengujian, dokumentasi bukti, analisis hasil, dan penyusunan laporan. Rincian kontribusi disesuaikan dengan pekerjaan yang benar-benar dilakukan setiap anggota.

13. Commit ID Git dan Repository
Repository GitHub: https://github.com/nabielprabaswara/Tugas-P05-OS
Commit ID: b158e056bde3246ce6ae8b6c51bc9e3458b880dc

Commit ID tersebut digunakan untuk mengidentifikasi versi perubahan proyek yang tersimpan di repository GitHub.

14. Struktur Dokumentasi Proyek
README.md: Informasi dan petunjuk proyek.
CHANGELOG.md: Riwayat perubahan dari P04 ke P05.
CONTRIBUTION.md: Catatan kontribusi anggota.
src/: Script atau command prototipe.
tests/test-case.md: Daftar skenario pengujian.
tests/hasil-pengujian.md: Hasil aktual pengujian.
evidence/identitas-proses.txt: Bukti identifikasi proses.
evidence/Foreground-background.txt: Bukti foreground dan background process.
evidence/Signal.txt: Bukti pengujian signal.
evidence/Priority.txt: Bukti pengujian prioritas proses.
evidence/Failure-recovery.txt: Bukti kegagalan dan pemulihan.
evidence/Cleanup.txt: Bukti cleanup.
evidence/screenshot-terpilih.png: Screenshot pendukung.
docs/revisi-rancangan-P04.pdf: Dokumen revisi rancangan P04.

15. Riwayat Perubahan

Riwayat perubahan rancangan dan implementasi prototipe dicatat dalam CHANGELOG.md. Setiap perubahan didokumentasikan berdasarkan pekerjaan yang benar-benar dilakukan oleh kelompok.
