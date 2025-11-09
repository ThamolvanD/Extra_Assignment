import 'package:flutter/material.dart';

class Answer2 extends StatelessWidget {
  const Answer2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Concert Ticket'),
      backgroundColor: Colors.pinkAccent,
      foregroundColor: Colors.white,),
      body: Center(
        child: Container(
          width: 300,
          height: 180,
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 237, 59, 139),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Stack(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Text('Flutter Live',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white)),
                          SizedBox(height: 8),
                          Text('Band: The Widgets', style: TextStyle(color: Colors.white)),
                          Text('Date: 8 NOV 2025', style: TextStyle(color: Colors.white)),
                          Text('Gate: 7', style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      color: const Color.fromARGB(255, 255, 175, 215),
                      child: const Center(
                        child: Icon(Icons.qr_code,
                            color: Colors.white, size: 50),
                      ),
                    ),
                  ),
                ],
              ),

              const Positioned(
                top: 0,
                bottom: 0,
                left: 210,
                child: Icon(Icons.more_vert, color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
