import 'package:flutter/material.dart';
import 'package:myapp/constants/theme.dart';
import 'package:myapp/screens/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController _usernameController = TextEditingController();
    TextEditingController _emailController = TextEditingController();
    TextEditingController _passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: amazonTheme.scaffoldBackgroundColor,
      appBar: AppBar(
        title: const Text('Amazon Kayıt Ol'),
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
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                label: const Text("Kullanıcı Adı"),
                prefixIcon: const Icon(Icons.person),
                border: amazonTheme.inputDecorationTheme.enabledBorder,
                focusedBorder: amazonTheme.inputDecorationTheme.focusedBorder,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                label: const Text("E-mail"),
                prefixIcon: const Icon(Icons.email),
                border: amazonTheme.inputDecorationTheme.enabledBorder,
                focusedBorder: amazonTheme.inputDecorationTheme.focusedBorder,
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                label: const Text("Şifre"),
                prefixIcon: const Icon(Icons.key),
                border: amazonTheme.inputDecorationTheme.enabledBorder,
                focusedBorder: amazonTheme.inputDecorationTheme.focusedBorder,
              ),
              obscureText: true,
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: amazonTheme.elevatedButtonTheme.style,
                onPressed: () {
                  // TODO: Kayıt işlemleri
                },
                child: Text(
                  'Kayıt Ol',
                  style: amazonTheme.textTheme.labelLarge,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Zaten hesabınız var mı?',
                  style: TextStyle(color: Colors.black54),
                ),
                TextButton(
                  onPressed: () {
                    // TODO: Giriş ekranına yönlendir
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  child: const Text(
                    'Giriş Yap',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
