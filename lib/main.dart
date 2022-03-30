import 'package:flutter/material.dart';
import 'package:layout/content_section.dart';

import 'camping_title_section.dart';
import 'custom_button.dart';
// Uncomment lines 7 and 10 to view the visual layout at runtime.
// import 'package:flutter/rendering.dart' show debugPaintSizeEnabled;

void main() {
  // debugPaintSizeEnabled = true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;

    return MaterialApp(
      title: 'Flutter layout demo',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(
          children: [
            Image.asset(
              'images/lake.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            const CampingTitle(),
            const ContentSection(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomButton(color: color, icon: Icons.call, label: 'CALL'),
                CustomButton(color: color, icon: Icons.near_me, label: 'ROUTE'),
                CustomButton(color: color, icon: Icons.share, label: 'SHARE'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

