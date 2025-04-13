<전체 코드>

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
              // 상단 부분
              Expanded(
                flex: 1,
                child: Row(
                  children: [
                    // 왼쪽 빨간색 박스
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.red),
                    ),
                    // 오른쪽 부분
                    Expanded(
                      flex: 1,
                      child: Column(
                        children: [
                          // 파란색 박스
                          Expanded(
                            flex: 1,
                            child: Container(color: Colors.blue),
                          ),
                          // 검정색과 주황색 행
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: [
                                // 검정색 박스
                                Expanded(
                                  flex: 1,
                                  child: Container(color: Colors.black),
                                ),
                                // 주황색 박스
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
              // 하단 노란색 부분
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
