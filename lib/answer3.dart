import 'package:flutter/material.dart';

class Answer3 extends StatefulWidget {
  const Answer3({super.key});

  @override
  State<Answer3> createState() => _Answer3State();
}

class _Answer3State extends State<Answer3> {
  final _formKey = GlobalKey<FormState>();
  int _basePrice = 150;
  bool _vacuum = false;
  bool _wax = false;

  int get total {
    int total = _basePrice;
    if (_vacuum) total += 50;
    if (_wax) total += 100;
    return total;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำนวณค่าบริการล้างรถ')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('เลือกขนาดรถ:',
                  style: TextStyle(fontWeight: FontWeight.bold)),
              DropdownButton<int>(
                value: _basePrice,
                items: const [
                  DropdownMenuItem(value: 150, child: Text('รถเล็ก (Small) - 150 บาท')),
                  DropdownMenuItem(value: 200, child: Text('รถเก๋ง (Medium) - 200 บาท')),
                  DropdownMenuItem(value: 250, child: Text('SUV/กระบะ (Large) - 250 บาท')),
                ],
                onChanged: (value) {
                  setState(() => _basePrice = value!);
                },
              ),
              CheckboxListTile(
                title: const Text('ดูดฝุ่น (+50 บาท)'),
                value: _vacuum,
                onChanged: (val) => setState(() => _vacuum = val!),
              ),
              CheckboxListTile(
                title: const Text('เคลือบแว็กซ์ (+100 บาท)'),
                value: _wax,
                onChanged: (val) => setState(() => _wax = val!),
              ),
              const SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () => setState(() {}),
                  child: const Text('คำนวณราคา'),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: Text(
                  'ราคารวม: $total บาท',
                  style: const TextStyle(
                      fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
