# 현재시각 출력

```dart
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // 날짜 형식을 위해 intl 패키지 사용

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const TimeDisplayScreen(),
    );
  }
}

class TimeDisplayScreen extends StatefulWidget {
  const TimeDisplayScreen({super.key});

  @override
  _TimeDisplayScreenState createState() => _TimeDisplayScreenState();
}

class _TimeDisplayScreenState extends State<TimeDisplayScreen> {
  late Timer _timer;
  String _currentTime = '';

  @override
  void initState() {
    super.initState();
    _updateTime(); // 초기 시간 설정
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      _updateTime();
    });
  }

  void _updateTime() {
    DateTime now = DateTime.now();
    String formattedDate = DateFormat('yyyy-MM-dd').format(now);
    String formattedTime = DateFormat('a h:mm:ss', 'ko_KR').format(now); // 오전/오후 포함
    setState(() {
      _currentTime = '$formattedDate\n$formattedTime';
    });
  }

  @override
  void dispose() {
    _timer.cancel(); // 타이머 해제
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('현재 시각')),
      body: Center(
        child: Text(
          _currentTime,
          style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
```
