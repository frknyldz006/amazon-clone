import 'package:flutter/material.dart';

final ThemeData amazonTheme = ThemeData(
  primaryColor: Colors.orangeAccent,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0, // Düz bir görünüm için gölgeyi kaldırıyoruz
    titleTextStyle: TextStyle(
      color: Colors.black87, // Başlık rengi
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    iconTheme: IconThemeData(
      color: Colors.black87, // AppBar'daki icon renkleri
    ),
  ),
  textButtonTheme: TextButtonThemeData(
    style: TextButton.styleFrom(
      foregroundColor: Colors.blueAccent,
      textStyle: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.orangeAccent, // Buton rengi
      elevation: 0, // Daha modern bir görünüm için gölgelendirme kapalı
      shape: RoundedRectangleBorder(
        borderRadius:
            BorderRadius.circular(8), // Köşeleri yuvarlatılmış butonlar
      ),
      textStyle: const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.grey.shade700, // Input label rengi
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(
        color: Colors.grey.shade400, // Boş input alanı kenarlığı
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: const BorderSide(
        color: Colors.orangeAccent, // Fokuslanmış input kenarlığı
        width: 2,
      ),
      borderRadius: BorderRadius.circular(8),
    ),
    contentPadding: const EdgeInsets.symmetric(
      vertical: 16,
      horizontal: 20,
    ),
  ),
  textTheme: const TextTheme(
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.bold,
      color: Colors.black87,
    ),
    bodyLarge: TextStyle(
      fontSize: 16,
      color: Colors.black54,
    ),
    labelLarge: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
    ),
  ),
  iconTheme: const IconThemeData(
    color: Colors.grey, // Genel ikon rengi
  ),
  dividerColor: Colors.grey.shade300,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
