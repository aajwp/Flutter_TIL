import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Hello World App')),
        body: const Center(child: Text('Hello World')),
      ),
    );
  }
}

![hello_world](https://github.com/aajwp/Flutter_TIL/blob/main/hello_world.png)
