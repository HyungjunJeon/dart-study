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

  // 기본 자료형들은 다음과 같은 것들이 있으며 모두 object
  String name9 = "hyungjun";
  bool alive = true;
  int age = 12;
  double money = 69.99;
  // num은 정수, 실수 모두 가능
  num x = 12;
  x = 1.1;

  // 리스트 선언
  // 마지막에 ,를 추가하면 요소당 한 줄씩 자동 포맷팅해줌
  var numbers = [
    1,
    2,
    3,
    4,
  ];
  List<int> numbers2 = [
    1,
    2,
    3,
    4,
  ];

  // collection if
  // 아래는 numbers3가 [1, 2, 3, 4,]일 떄 if (giveMeFive) { numbers3.add(5) }와 동일
  var giveMeFive = true;
  var numbers3 = [
    1,
    2,
    3,
    4,
    if (giveMeFive) 5,
  ];
  print(numbers3);

  // String Interpolation은 text에 변수를 추가하는 방법
  var name10 = 'hyungjun';
  var age2 = 10;
  var greeting = "Hello everyone, my name is $name10 and I'm ${age2 + 2}";
  print(greeting);

  // collection for
  var oldFriends = ['nico', 'lynn'];
  var newFriends = [
    'lewis',
    'ralph',
    'darren',
    for (var friend in oldFriends) "💖 $friend",
  ];
  print(newFriends);

  // Maps
  // 아래와 같이 선언 시 key와 value의 type은 컴파일러가 알아서 추론
  // Object type은 typescript의 any와 같음
  var player = {
    'name': 'nico',
    'xp': 19.99,
    'superpower': false,
  };
  // 아래와 같이 type을 지정해서 비어있는 상태로도 선언 가능
  Map<int, bool> player2 = {};
  // 다음과 같이 복잡한 type을 가지도록 선언하는 것도 가능
  Map<List<int>, bool> player3 = {};

  // Sets
  var numbers4 = {1, 2, 3, 4};
  Set<int> numbers5 = {1, 2, 3, 4};
  // 이렇게하면 추가되지 않음
  // Set은 순서가 있고 요소들이 유니크해야하기 때문
  // Python의 Tuple과 같다
  numbers5.add(1);
  numbers5.add(1);
  numbers5.add(1);
  print(numbers5);

  sayHello('nico');
  print(sayHello2('nico'));
  print(sayHello3('nico'));
  print(sayHello4(age: 19, country: 'cuba', name: 'nico'));
  print(sayHello5(age: 19, country: 'cuba', name: 'nico'));
  var result = sayHello6('nico', 12);
  print(result);

  capitalizeName('nico'); // NICO
  capitalizeName(null);

  // QQ equals (QQ assignment operator)
  String? name11;
  name11 ??= 'nico';
  print(name11);

  print(reverseListOfNumbers([1, 2, 3]));

  print(sayHi({'name': 'nico'}));

  // new 키워드를 사용할 수 있지만 필수 아님
  var player4 = Player();
  print(player4.name);
  // Class 멤버 변수를 final로 선언하면 값 변경 불가
  // player4.name = 'lalalala';
  // print(player4.name);
  player4.sayHello();

  var player5 = Player2("lynn", 2500);
  player5.sayHello();

  var player6 = Player3(
    name: "nico",
    xp: 1200,
    team: "blue",
    age: 21,
  );
  player6.sayHello();
  var player7 = Player3(
    name: 'lynn',
    xp: 2500,
    team: 'blue',
    age: 12,
  );
  player7.sayHello();

  var bluePlayer = Player4.createBluePlayer(name: 'nico', age: 21);
  var redPlayer = Player4.createRedPlayer('lynn', 12);

  var apiData = [
    {
      "name": "nico",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "lynn",
      "team": "red",
      "xp": 0,
    },
    {
      "name": "dal",
      "team": "red",
      "xp": 0,
    },
  ];

  apiData.forEach((playerJson) {
    var player8 = Player5.fromJson(playerJson);
    player8.sayHello();
  });

  var nico = Player6(name: 'nico', xp: 1200, team: 'red');
  var potato = nico
    ..name = 'las'
    ..xp = 1200000
    ..team = 'blue'
    ..sayHello();

  var nico2 = Player7(
    name: 'nico',
    xp: XPLevel.medium,
    team: Team.red,
  );
  var potato2 = nico2
    ..name = 'las'
    ..xp = XPLevel.pro
    ..team = Team.blue
    ..sayHello();

  var player9 = Player9(team: Team.red, name: 'nico');
  player9.sayHello();
}

// 함수 정의
// void는 아무것도 return 하지 않는다는 의미
void sayHello(String name) {
  print("Hello $name nice to meet you!");
}

// type 지정 시 해당 type 값 return
String sayHello2(String name) {
  return "Hello $name nice to meet you!";
}

// 특정 값 return 함수는 다음과 같이도 선언 가능
String sayHello3(String name) => "Hello $name nice to meet you!";
num plus(num a, num b) => a + b;

// named argument
// Null Safety를 위해 기본값 지정 필요
String sayHello4({
  String name = 'anon',
  int age = 99,
  String country = 'wakanda',
}) {
  return "Hello $name, you are $age, and you come from $country";
}

// 기본값을 지정하지 않고 required 키워드를 사용해도 된다
String sayHello5({
  required String name,
  required int age,
  required String country,
}) {
  return "Hello $name, you are $age, and you come from $country";
}

// Optional Positional Parameters
// 대괄호로 감싸고 ?을 붙여 null이 될 수 있음을 알려주며 기본값을 부여해야 함
String sayHello6(String name, int age, [String? country = 'cuba']) =>
    "Hello $name, you are $age years old from $country";

// QQ Operator
String capitalizeName(String? name) => name?.toUpperCase() ?? 'ANON';

// typedef
typedef ListOfInts = List<int>;
ListOfInts reverseListOfNumbers(ListOfInts list) {
  var reversed = list.reversed;
  return reversed.toList();
}

// 아래와 같이 structured data에 적용하더라도 동작은 하지만 이런경우 class를 만드는 것을 추천
typedef UserInfo = Map<String, String>;
String sayHi(UserInfo userInfo) {
  return "Hi ${userInfo['name']}";
}

// Class
class Player {
  final String name = 'nico';
  int xp = 1500;

  void sayHello() {
    // Dart의 Class에서는 this를 붙이지않고 멤버 변수 접근 가능
    // 메소드 안에 멤버변수와 같은 이름의 변수 선언이 가능한데 이 때 멤버변수 접근 시 this 붙여야함
    print("Hi my name is $name");
  }
}

// Constructor Method
class Player2 {
  final String name;
  int xp;

  // 위치 중요
  Player2(this.name, this.xp);

  void sayHello() {
    print("Hi my name is $name");
  }
}

// Named Constructor Parameters
class Player3 {
  final String name;
  int xp;
  String team;
  int age;

  Player3(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  void sayHello() {
    print("Hi my name is $name");
  }
}

// Named Constructor
class Player4 {
  final String name;
  int xp, age;
  String team;

  Player4(
      {required this.name,
      required this.xp,
      required this.team,
      required this.age});

  Player4.createBluePlayer({
    required String name,
    required int age,
  })  : this.age = age,
        this.name = name,
        this.team = 'blue',
        this.xp = 0;

  // 이렇게하면 Positional이며 required
  Player4.createRedPlayer(String name, int age)
      : this.age = age,
        this.name = name,
        this.team = 'red',
        this.xp = 0;

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Player5 {
  final String name;
  int xp;
  String team;

  Player5.fromJson(Map<String, dynamic> playerJson)
      : name = playerJson['name'],
        xp = playerJson['xp'],
        team = playerJson['team'];

  void sayHello() {
    print("Hi my name is $name");
  }
}

// Cascade Notation
class Player6 {
  String name;
  int xp;
  String team;

  Player6({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

// Enum
enum Team { red, blue }

enum XPLevel { beginner, medium, pro }

class Player7 {
  String name;
  XPLevel xp;
  Team team;

  Player7({required this.name, required this.xp, required this.team});

  void sayHello() {
    print("Hi my name is $name");
  }
}

// Abstract Class
// 절대 이렇게 작성할 일 없음
// 다른 클래스들이 직접 구현할 메소드들을 모아놓은 일종의 청사진
abstract class Human {
  void walk();
}

// 사용하려면 다음처럼 하면 됨
class Player8 extends Human {
  String name;
  XPLevel xp;
  Team team;

  Player8({required this.name, required this.xp, required this.team});

  void walk() {
    print('Im walking');
  }

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Coach extends Human {
  void walk() {
    print('The coach is walking');
  }
}

// Inheritance
class Human2 {
  final String name;

  Human2({required this.name});

  void sayHello() {
    print("Hi my name is $name");
  }
}

class Player9 extends Human2 {
  final Team team;

  Player9({
    required this.team,
    required String name,
  }) : super(name: name);

  @override
  void sayHello() {
    super.sayHello();
    print("and I play for ${team}");
  }
}

// Mixins
// Constructor가 없는 Class
// 여러번 재사용 가능
class Strong {
  final double strengthLevel = 1500.99;
}

class QuickRunner {
  void runQuick() {
    print("ruuuuuuuuuuuun!");
  }
}

class Tall {
  final double height = 1.99;
}

class Player10 with Strong, QuickRunner, Tall {
  final Team team;

  Player10({
    required this.team,
    required String name,
  });

  @override
  void sayHello() {
    print("and I play for ${team}");
  }
}

class Horse with Strong, QuickRunner {}

class Kid with QuickRunner {}
