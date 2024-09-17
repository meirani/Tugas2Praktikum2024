# Tugas Pertemuan 2

Nama : Nabila Winanda Meirani

NIM : H1D022108

Shift Baru: Shift D

## Penjelasan

1. File main.dart<br>
Ini adalah file utama yang menjalankan aplikasi flutter. Di dalamnya terdapat fungsi main() yang memanggil runApp(), yang menjalankan aplikasi. Aplikasi ini menampilkan widget FormData sebagai halaman pertama.
<br>
2. File form_data.dart<br>
File ini merupakan file yang membuat field untuk pengguna menginputkan data.
- FormData adalah StatefulWidget yang menampilkan form input.
- Pada FormDataState, terdapat tiga TextEditingController (namaController, nimController, dan tahunController) yang digunakan untuk menangani input data dari pengguna.
- Ada tiga fungsi _textboxNama(), _textboxNIM(), dan _textboxTahun() yang membuat TextField untuk input data.
- Fungsi _tombolSimpan() untuk tombol "Simpan" yang ketika diklik:
  a. Mengambil teks yang diinputkan melalui controller (_namaController, _nimController, dan _tahunController).
  b. Data kemudian dikirim ke halaman berikutnya yaitu tampil_data.dart menggunakan Navigator.push().
<br>
3. File tampil_data.dart<br>
File ini merupakan file yang akan menampilkan hasil dari inputan pengguna.
- TampilData adalah StatelessWidget yang menampilkan data yang dipassing dari halaman form_data.
- Data nama, nim, dan tahun lahir diterima melalui constructor.
- Umur pengguna dihitung berdasarkan tahun lahir yang dipassing dari halaman sebelumnya menggunakan DateTime.now().year - tahun.
- Hasilnya ditampilkan dalam widget Text.

4. PENJELASAN PROSES PASSING

- Pengguna mengisi form dengan menginput data yaitu Nama, NIM, dan Tahun Lahir melalui masing-masing TextField.
- Pengguna mengklik tombol Simpan, lalu data diambil dari controller _namaController, _nimController, dan _tahunController.
- Saat tombol Simpan diklik, fungsi Navigator.of(context).push() memanggil halaman tampil_data dengan menggunakan MaterialPageRoute.
- Data (Nama, NIM, dan Tahun) dipassing melalui constructor TampilData.
- Data yang diterima digunakan untuk menghitung umur dan kemudian ditampilkan di layar menggunakan widget Text.

## Screenshot

![readme1](https://github.com/user-attachments/assets/a049f0ae-b965-436c-bfbd-5350f669e8da)
![readme2](https://github.com/user-attachments/assets/ed25f73c-cc06-49ee-ba83-ab198d9543de)
![readme3](https://github.com/user-attachments/assets/173f17bf-4d46-4ddc-88df-e8acbc70bffe)
