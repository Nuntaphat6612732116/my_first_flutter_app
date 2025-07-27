import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GetxNavigationPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GetX Navigation Demo'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton.icon(
              icon: Icon(Icons.home),
              label: Text('Go to Home Page'),
              onPressed: () => Get.toNamed('/'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.person),
              label: Text('Go to Profile Page'),
              onPressed: () => Get.toNamed('/profile'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.photo_album),
              label: Text('Go to Image Gallery'),
              onPressed: () => Get.toNamed('/image-gallery'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
            ),
            SizedBox(height: 16),
            ElevatedButton.icon(
              icon: Icon(Icons.view_quilt),
              label: Text('Go to Mix Layout'),
              onPressed: () => Get.toNamed('/mix-layout'),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}
