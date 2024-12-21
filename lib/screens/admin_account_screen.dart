import 'package:flutter/material.dart';
import 'package:carselling/screens/login_screen.dart';
import 'package:carselling/theme.dart';

class admin extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Account',
          style: poppinsTextStyle.copyWith(
            color: Color(0xffEA0B25), // Warna merah
            fontWeight: FontWeight.bold, // Bold
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, // Sejajar di tengah secara horizontal
          mainAxisSize: MainAxisSize.min, // Sesuaikan tinggi dengan konten
          children: [
            const SizedBox(height: 20), // Jarak dari AppBar
            // Foto profil berbentuk lingkaran
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage:
                    AssetImage('assets/profile.png'), // Path foto profil
                backgroundColor:
                    Colors.grey[300], // Jika gambar gagal, warna latar belakang
              ),
            ),
            const SizedBox(height: 20),
            // Nama user
            Center(
              child: Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            // Email user
            Center(
              child: Text(
                'john.doe@example.com',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
            ),
            const SizedBox(height: 30),
            // Tombol Logout
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Arahkan ke halaman login
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => LoginScreen()),
                    (route) => false, // Menghapus semua halaman sebelumnya
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Log Out',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
