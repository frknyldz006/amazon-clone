import 'package:flutter/material.dart';

import '../constants/theme.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profil', style: amazonTheme.textTheme.headlineMedium),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Kullanıcı Bilgileri
              _buildUserInfo(context),

              // Siparişlerim
              _buildSectionTitle('Siparişlerim'),
              _buildOrderOptions(context),

              // Hesap Ayarları
              _buildSectionTitle('Hesap Ayarları'),
              _buildAccountSettings(context),

              // Diğer
              _buildSectionTitle('Diğer'),
              _buildOtherOptions(context),

              // Çıkış Yap
              _buildLogoutButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildUserInfo(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage(
              'https://placekitten.com/200/200'), // Kullanıcı resmi
        ),
        const SizedBox(width: 16),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Kullanıcı Adı', style: amazonTheme.textTheme.headlineLarge),
            Text('kullanici@email.com',
                style: amazonTheme.textTheme.bodyMedium),
          ],
        ),
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: Text(title, style: amazonTheme.textTheme.headlineLarge),
    );
  }

  Widget _buildOrderOptions(BuildContext context) {
    return Column(
      children: [
        _buildListTile(
          context,
          'Tüm Siparişlerim',
          Icons.shopping_bag,
          () {
            // Tüm siparişler sayfasına yönlendir
          },
        ),
        _buildListTile(
          context,
          'Bekleyen Siparişlerim',
          Icons.hourglass_bottom,
          () {
            // Bekleyen siparişler sayfasına yönlendir
          },
        ),
        _buildListTile(
          context,
          'Geçmiş Siparişlerim',
          Icons.history,
          () {
            // Geçmiş siparişler sayfasına yönlendir
          },
        ),
      ],
    );
  }

  Widget _buildAccountSettings(BuildContext context) {
    return Column(
      children: [
        _buildListTile(
          context,
          'Hesap Bilgilerim',
          Icons.person,
          () {
            // Hesap bilgileri sayfasına yönlendir
          },
        ),
        _buildListTile(
          context,
          'Adreslerim',
          Icons.location_on,
          () {
            // Adresler sayfasına yönlendir
          },
        ),
        _buildListTile(
          context,
          'Ödeme Yöntemlerim',
          Icons.credit_card,
          () {
            // Ödeme yöntemleri sayfasına yönlendir
          },
        ),
      ],
    );
  }

  Widget _buildOtherOptions(BuildContext context) {
    return Column(
      children: [
        _buildListTile(
          context,
          'Müşteri Hizmetleri',
          Icons.headset_mic,
          () {
            // Müşteri hizmetleri sayfasına yönlendir
          },
        ),
        _buildListTile(
          context,
          'Ayarlar',
          Icons.settings,
          () {
            // Ayarlar sayfasına yönlendir
          },
        ),
        _buildListTile(
          context,
          'Yardım',
          Icons.help,
          () {
            // Yardım sayfasına yönlendir
          },
        ),
      ],
    );
  }

  Widget _buildListTile(
    BuildContext context,
    String title,
    IconData icon,
    VoidCallback onTap,
  ) {
    return ListTile(
      leading: Icon(icon, color: amazonTheme.primaryColor),
      title: Text(title, style: amazonTheme.textTheme.bodyLarge),
      onTap: onTap,
      trailing: Icon(Icons.arrow_forward_ios,
          size: 16, color: amazonTheme.primaryColor),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: ElevatedButton(
        onPressed: () {
          // Çıkış yapma işlemleri
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
        ),
        child: Text('Çıkış Yap', style: amazonTheme.textTheme.bodyLarge),
      ),
    );
  }
}
