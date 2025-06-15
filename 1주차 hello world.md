<h2>1주차</h2>

- Android Studio에 flutter 플러그인 설치
- flutter sdk 설치
- 환경변수 설정
- hello_world 프로젝트 생성 후 코드작성
- 디바이스 크롬 연결 후 결과확인

---

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

