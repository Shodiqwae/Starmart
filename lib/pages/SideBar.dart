import 'package:ecomerce_app/widgets/HomeAppBar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SideBar(),
    );
  }
}

class SideBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sidebar Example'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color:  Color.fromARGB(215, 255, 255, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('images/profile.jpg'),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Rafi setiawan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Beranda'),
              onTap: () {
                Navigator.pushNamed(context, "ItemsWidget");
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () {
                // Aksi yang diinginkan ketika menu item 'Pengaturan' diklik
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () {
                // Aksi yang diinginkan ketika menu item 'Pengaturan' diklik
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () {
                // Aksi yang diinginkan ketika menu item 'Pengaturan' diklik
                Navigator.pop(context);
              },
            ),
             ListTile(
              leading: Icon(Icons.settings),
              title: Text('Pengaturan'),
              onTap: () {
                // Aksi yang diinginkan ketika menu item 'Pengaturan' diklik
                Navigator.pop(context);
              },
            ),
            // ... Tambahkan ListTile lain sesuai kebutuhan
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Keluar'),
              onTap: () {
                // Aksi yang diinginkan ketika menu item 'Keluar' diklik
                // Misalnya, tampilkan dialog konfirmasi logout
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Konfirmasi Logout'),
                      content: Text('Apakah Anda yakin ingin keluar?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Batal'),
                        ),
                        TextButton(
                          onPressed: () {
                            // Lakukan tindakan logout di sini
                            // Misalnya, kembali ke layar login
                            Navigator.pop(context);
                          },
                          child: Text('Keluar'),
                        ),
                      ],
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Halaman Utama'),
      ),
    );
  }
}
