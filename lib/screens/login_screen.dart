import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carselling/screens/main_screen.dart'; // Import MainScreen

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 50),
              // Logo or Title
              Text(
                'Welcome Back!',
                style: GoogleFonts.poppins(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                'Login to continue',
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 40),
              // Email TextField
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter your email',
                  labelText: 'Email',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
              const SizedBox(height: 20),
              // Password TextField
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter your password',
                  labelText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  prefixIcon: Icon(Icons.lock),
                ),
              ),
              const SizedBox(height: 20),
              // Login Button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Navigasi ke MainScreen setelah login
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => MainScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                  ),
                  child: Text(
                    'Login',
                    style: GoogleFonts.poppins(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // Signup Text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      color: Colors.grey[700],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      // Tambahkan logika untuk navigasi ke halaman Signup jika diperlukan
                    },
                    child: Text(
                      'Sign Up',
                      style: GoogleFonts.poppins(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
