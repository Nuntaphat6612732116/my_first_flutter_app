import 'package:flutter/material.dart';
import 'package:get/get.dart'; // ✅ สำคัญมาก
import 'pages/home_page.dart';
import 'pages/profile_page.dart';
import 'pages/image_gallery_page.dart';
import 'pages/mix_layout_page.dart';
import 'pages/getx_navigation_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // ✅ เปลี่ยนตรงนี้
      title: 'Flutter Demo App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        appBarTheme: AppBarTheme(
          elevation: 4,
          centerTitle: true,
        ),
      ),
      initialRoute: '/',
      getPages: [
        // ✅ ใช้แทน routes:
        GetPage(name: '/', page: () => HomePage()),
        GetPage(name: '/profile', page: () => ProfilePage()),
        GetPage(name: '/image-gallery', page: () => ImageGalleryPage()),
        GetPage(name: '/mix-layout', page: () => MixLayoutPage()),
        GetPage(name: '/getx-navigation', page: () => GetxNavigationPage()),
      ],
    );
  }
}
