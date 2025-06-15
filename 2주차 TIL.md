<h2>구구단 출력</h2>

void main() {
  for (int i = 2; i <= 9; i++) {
    print('=== $i단 ===');
    for (int j = 1; j <= 9; j++) {
      print('$i x $j = ${i * j}');
    }
    print('');
  }
}

---

<h2>요일 출력</h2>

void main() {
  String input = '2025-03-11';
  DateTime date = DateTime.parse(input);

  List<String> weekdays = ['월', '화', '수', '목', '금', '토', '일'];

  print('${weekdays[date.weekday - 1]}요일');
}
