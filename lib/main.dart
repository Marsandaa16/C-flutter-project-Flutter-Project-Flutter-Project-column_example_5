import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Column Example 5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text('Column Example 5'),
        backgroundColor: Colors.black,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Column - Simple Button
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Column - Simple Button',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    print('Button ditekan');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.grey[200], // Ganti 'primary' dengan 'backgroundColor'
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(24),
                  ),
                  child: Column(
                    children: [
                      Icon(Icons.android, size: 40, color: Colors.black),
                      Text('Android', style: TextStyle(color: Colors.black)),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            // Column - Contact Card
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Column - Contact Card',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
                Container(
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey[200],
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Column(
                    children: [
                      CircleAvatar(
                        radius: 40,
                        backgroundImage: NetworkImage('https://placehold.co/100x100'),
                      ),
                      SizedBox(height: 10),
                      Text('CODESUNDAR', style: TextStyle(fontWeight: FontWeight.bold)),
                      Text('Learn flutter easily', style: TextStyle(color: Colors.grey)),
                      SizedBox(height: 10),
                      ElevatedButton(
                        onPressed: () {
                          print('Start button ditekan');
                        },
                        child: Text('Start'),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(width: 20),
            // Column - News Page
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Column - News Page',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                SizedBox(height: 20),
                Container(
                  width: 200,
                  child: Column(
                    children: [
                      Image.network('https://placehold.co/256x144', fit: BoxFit.cover),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Heavy Rain is predicted during this summer',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: 5),
                            Text('Posted 5 mins ago', style: TextStyle(color: Colors.grey)),
                            SizedBox(height: 5),
                            Text(
                              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          'credit: codesundar.com',
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}