import 'dart:math';
import 'package:flutter/material.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  final Random random = Random();

  // List of image URLs for placeholders
  final List<String> imageUrls = [
    'https://via.placeholder.com/150',
    'https://via.placeholder.com/200',
    'https://via.placeholder.com/250',
    'https://via.placeholder.com/300',
    'https://via.placeholder.com/350',
  ];

  // List of GIF URLs
  final List<String> gifUrls = [
    'https://media.giphy.com/media/l4FGo4yXeJMeBRNLO/giphy.gif',
    'https://media.giphy.com/media/dzaUX7CAG0Ihi/giphy.gif',
    'https://media.giphy.com/media/3o6fJ8jngfVrulDK4o/giphy.gif',
  ];

  // Generate random data with mixed types
  List<dynamic> _generateRandomData(int count) {
    List<dynamic> data = [];
    for (int i = 0; i < count; i++) {
      int choice = random.nextInt(3);
      switch (choice) {
        case 0:
          // Add random image
          data.add(Image.network(imageUrls[random.nextInt(imageUrls.length)]));
          break;
        case 1:
          // Add random animation
          data.add(Icon(Icons.favorite, color: Colors.red));
          break;
        case 2:
          // Add random GIF
          data.add(Image.network(gifUrls[random.nextInt(gifUrls.length)]));
          break;
      }
    }
    return data;
  }

  @override
  Widget build(BuildContext context) {
    // Generate random data for the ListView
    List<dynamic> items = _generateRandomData(10);

    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: items[index]),
          );
        },
      ),
    );
  }
}
