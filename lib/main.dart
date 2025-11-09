import 'package:flutter/material.dart';
import 'answer1.dart';
import 'answer2.dart';
import 'answer3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Extra Final Lab',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.blue),
      home: const MenuPage(),
    );
  }
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Extra Assignment Flutter')),
      body: ListView(
        children: [
          ListTile(
            title: const Text('ข้อ 1: Comment Card'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Answer1()),
            ),
          ),
          ListTile(
            title: const Text('ข้อ 2: Concert Ticket'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Answer2()),
            ),
          ),
          ListTile(
            title: const Text('ข้อ 3: คำนวณค่าบริการล้างรถ'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Answer3()),
            ),
          ),
        ],
      ),
    );
  }
}
