import '/ui/tampil_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FormData extends StatefulWidget {
  const FormData({Key? key}) : super(key: key);

  @override
  FormDataState createState() => FormDataState();
}

class FormDataState extends State<FormData> {
  final _namaController = TextEditingController();
  final _nimController = TextEditingController();
  final _tahunController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Input Data"),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          children: [
            _textboxNama(), //sidebox untuk menambah jarak antar textfield
            const SizedBox(height: 16),
            _textboxNIM(),
            const SizedBox(height: 16),
            _textboxTahun(),
            const SizedBox(height: 16),
            _tombolSimpan()
          ],
        ),
      ),
    );
  }

  _textboxNama() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Nama",
        labelStyle: TextStyle(color: Colors.blue), // Mengubah warna label
        border: OutlineInputBorder(), // Menambahkan border pada TextField
      ),
      style: const TextStyle(
          color: Colors.blue, fontSize: 16), // Mengubah warna dan ukuran teks
      controller: _namaController,
    );
  }

  _textboxNIM() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "NIM",
        labelStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(),
      ),
      style: const TextStyle(color: Colors.blue, fontSize: 16),
      controller: _nimController,
    );
  }

  _textboxTahun() {
    return TextField(
      decoration: const InputDecoration(
        labelText: "Tahun Lahir",
        labelStyle: TextStyle(color: Colors.blue),
        border: OutlineInputBorder(),
      ),
      style: const TextStyle(color: Colors.blue, fontSize: 16),
      controller: _tahunController,
    );
  }

  _tombolSimpan() {
    return ElevatedButton(
        onPressed: () {
          String nama = _namaController.text;
          String nim = _nimController.text;
          int tahun = int.parse(_tahunController.text);
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) =>
                  TampilData(nama: nama, nim: nim, tahun: tahun)));
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.blue, // Mengubah warna latar belakang tombol
          foregroundColor: Colors.white, // Mengubah warna teks tombol
          padding: const EdgeInsets.symmetric(
              horizontal: 24, vertical: 12), // Mengubah ukuran padding tombol
        ),
        child: const Text('Simpan'));
  }
}
