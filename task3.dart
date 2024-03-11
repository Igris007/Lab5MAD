import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
      theme: ThemeData(
        primaryColor: Colors.deepPurple,
        hintColor: Colors.deepOrange,
        scaffoldBackgroundColor: Colors.deepPurpleAccent,
      ),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text('App Bar'),
      ),
      body: Container(
        padding: const EdgeInsets.all(20.0),
        color: Colors.deepPurple,
        child: const YellowColumn(),
      ),
    );
  }
}

class YellowColumn extends StatelessWidget {
  const YellowColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      color: Colors.amber,
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          GreenRow(),
          SizedBox(height: 20),
          Text(
            'Text',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}

class GreenRow extends StatelessWidget {
  const GreenRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.teal,
      padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 10.0),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            Icons.shopping_cart,
            color: Colors.black,
          ),
          Expanded(
            child: Text(
              'Text',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
