import 'package:flutter/material.dart';
import 'package:myapp/constants/theme.dart';
import 'package:myapp/screens/home_screen.dart';

import 'register_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    return Scaffold(
      backgroundColor: amazonTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Amazon Giriş Yap'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                'assets/amazon-logo.png', // Logo yerleştirilecek
                height: 120,
              ),
            ),
            const SizedBox(height: 40),
            const SizedBox(height: 20),
            TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    label: Text("E-mail"), prefixIcon: Icon(Icons.email))),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                  label: Text("Şifre"), prefixIcon: Icon(Icons.key)),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: amazonTheme.elevatedButtonTheme.style,
                onPressed: () {
                  // TODO: Giriş işlemleri
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ),
                    );
                },
                child: Text(
                  'Giriş Yap',
                  style: amazonTheme.textTheme.labelLarge,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hesabınız yok mu?',
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Kayıt ekranına yönlendir
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RegisterScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Kayıt Ol',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Center(
              child: TextButton(
                onPressed: () {
                  // TODO: Şifre sıfırlama
                },
                child: const Text(
                  'Şifremi Unuttum',
                  style: TextStyle(
                    color: Colors.grey,
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
