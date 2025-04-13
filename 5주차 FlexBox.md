## 코드
```dart
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Center(
        child: Container(
          width: 500,
          height: 500,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    // 빨간박스
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.red),
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          // 파란박스
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.blue),
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                // 검은박스
                                Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.black),
                                ),
                                // 주황박스
                                Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.orange),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // 노란박스
              Expanded(
                flex: 1,
                child: Container(color: Colors.yellow),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

```
