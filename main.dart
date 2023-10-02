import 'dart:convert';
import 'dart:io';
import 'dart:math';

void main() {
  /// 1. 유저에게 가위바위보 중 무엇을 낼지 물어보기
  print('가위, 바위, 보!');
  final String userInput = stdin.readLineSync(encoding: utf8) ?? 'Error';

  /// 2. 컴퓨터가 낼 타입 결정하는 함수
  const selectList = ['가위', '바위', '보'];

  //0-2 임의의 값 가져오는
  final cpuInput = selectList[Random().nextInt(3)];
  print(cpuInput);

  /// 3. 유저의 타입과 컴퓨터 타입에 대한 결과 계산 함수
  final result = getResult(userInput, cpuInput);
  print(result);
}

String getResult(String userInput, String cpuInput) {
  const cpuWin = 'You lose';
  const playerWin = 'You win';
  const draw = 'Draw';

  String result = draw;

  switch (userInput) {
    case '가위':
      if (cpuInput == '바위') {
        result = cpuWin;
      }
      if (cpuInput == '보') {
        result = playerWin;
      }

    case '바위':
      if (cpuInput == '보') {
        result = cpuWin;
      }
      if (cpuInput == '가위') {
        result = playerWin;
      }

    case '보':
      if (cpuInput == '가위') {
        result = cpuWin;
      }
      if (cpuInput == '주먹') {
        result = playerWin;
      }

    default:
      result = '올바른 값을 입력하시오.';

  } return result;
}
