// main 함수는 반드시 필요 없으면 실행 불가
void main() {
  // 함수나 메소드 내부 지역 변수 선언
  var name1 = '형준';
  // Class에서 변수나 property 선언
  String name2 = '형준';
  // 변수 값 변경 시 처음 설정한 타입과 일치해야함
  name1 = 'hyungjun'; // 가능
  // name2 = 2; //불가능

  // 변수 선언 시 값을 대입하지 않으면 dynamic type
  var name3;
  // dynamic으로도 선언 가능
  dynamic name4;
  // 아래 모두 가능
  name3 = '형준';
  name3 = 12;
  name3 = true;

  if (name4 is String) {
    // 이 안에서 name4는 String type
  }
  if (name4 is int) {
    // 이 안에서 name4는 int type
  }

  // 변수 선언 시 type을 지정하고 ?을 붙이면 해당 type 혹은 null 대입 가능
  String? hyungjun = 'hyungjun';
  hyungjun = null;
  // hyungjun.length; // null일 수 있으므로 경고 발생
  // null이 아님을 확인시켜주어야 경고 미발생
  if (hyungjun != null) {
    hyungjun.length;
  }

  // 상수 선언 시에는 final 키워드 사용
  // JavaScript나 TypeScript의 const와 비슷
  final name5 = 'hyungjun';
  // final 키워드로 선언되면 상수이므로 값 변경 불가
  // name5 = 'jun';
  // final 키워드 사용 시에도 타입 지정 가능
  final String name6 = 'hyungjun';

  // 데이터 없이 변수 선언 후 api 호출 등의 작업 후 데이터 대입
  late final String name7;
  // 값 대입 없이 출력 등을 하려고 하면 경고 발생
  // print(name7);

  // 상수 선언 시 const를 사용할 수 있는데 final과 차이가 있음
  // compile-time-constant 선언
  // 앱스토어에 올리기 전부터 알고 있는 상수 값 선언 시 사용
  const name8 = 'hyungjun';
  // 상수이므로 값 변경 불가
  // name8 = 'jun';
}
