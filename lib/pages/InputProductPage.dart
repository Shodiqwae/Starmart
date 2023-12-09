import 'package:flutter/material.dart';

class InputProdukPage extends StatefulWidget {
  @override
  _InputProdukPageState createState() => _InputProdukPageState();
}

class _InputProdukPageState extends State<InputProdukPage> {
  String _namaProduk = '';
  String _harga = '';
  String _kategoriProduk = 'Makanan'; // Nilai default untuk kategori produk
  String _linkGambar = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Produk'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _namaProduk = value;
                });
              },
              decoration: InputDecoration(labelText: 'Nama Produk'),
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _harga = value;
                });
              },
              decoration: InputDecoration(labelText: 'Harga'),
              keyboardType: TextInputType.number,
            ),
            DropdownButtonFormField<String>(
              value: _kategoriProduk,
              onChanged: (newValue) {
                setState(() {
                  _kategoriProduk = newValue!;
                });
              },
              items: <String>['Makanan', 'Minuman', 'Barang', 'Lainnya']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              decoration: InputDecoration(labelText: 'Kategori Produk'),
            ),
            TextFormField(
              onChanged: (value) {
                setState(() {
                  _linkGambar = value;
                });
              },
              decoration: InputDecoration(labelText: 'Link Gambar'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                _showSummaryDialog(context);
              },
              child: Text('Kirim'),
            ),
          ],
        ),
      ),
    );
  }

  void _showSummaryDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Ringkasan Informasi'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Nama Produk: $_namaProduk'),
              Text('Harga: $_harga'),
              Text('Kategori Produk: $_kategoriProduk'),
              Text('Link Gambar: $_linkGambar'),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk menyimpan informasi
                Navigator.of(context).pop();
              },
              child: Text('Simpan'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('Kembali'),
            ),
          ],
        );
      },
    );
  }
}