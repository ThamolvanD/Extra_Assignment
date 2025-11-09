import 'package:flutter/material.dart';

class Answer1 extends StatelessWidget {
  const Answer1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Comment Thread'),
      backgroundColor: Colors.pinkAccent,
      foregroundColor: Colors.white,),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CircleAvatar(radius: 24, child: Text('A'),backgroundColor: Colors.blue,),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('User A',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          Text('This is the main comment. Flutter layouts are fun!'),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),

                Row(
                  children: const [
                    Icon(Icons.thumb_up_alt_outlined, size: 18),
                    Text(' 12'),
                    SizedBox(width: 20),
                    Icon(Icons.comment_outlined, size: 18),
                    Text(' Reply'),
                    Spacer(),
                    Text('1h ago', style: TextStyle(color: Colors.grey)),
                  ],
                ),
                const SizedBox(height: 10),

                Padding(
                  padding: const EdgeInsets.only(left: 40.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const CircleAvatar(radius: 18, child: Text('B')),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('User B',
                                style: TextStyle(fontWeight: FontWeight.bold)),
                            Text('I agree!'),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
