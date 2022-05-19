import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: HoemScreen()));

// 홈 스크린 구현
class HoemScreen extends StatelessWidget {
  const HoemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SelectionButton(),
      ),
    );
  }
}

// 선택창 구현
class SelectionButton extends StatelessWidget {
  const SelectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _navigateAndDisplaySelection(context);
      },
      child: Text('pick an option, any option!'),
    );
  }

  // SelectionScreen 띄우고 pop으로 부터 결과를 기다리는 메서드
  _navigateAndDisplaySelection(BuildContext context) async {
    // Navigator.push -> Future 반환
    // Navigator pop이 호출된 이후를 완성함
    final res = await Navigator.push(
      context,
      MaterialPageRoute(builder: ((context) => SelectionScreen())),
    );

    // 결과가 있을 경우 snackbar로 호출
    ScaffoldMessenger.of(context)
      ..removeCurrentSnackBar()
      ..showSnackBar(SnackBar(content: Text('$res')));
  }
}

// 선택 창
class SelectionScreen extends StatelessWidget {
  const SelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'OK');
                },
                child: Text('OK')),
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, 'NO');
                },
                child: Text('NO')),
          ],
        ),
      ),
    );
  }
}
