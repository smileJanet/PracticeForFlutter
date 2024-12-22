void main() {
  var name = 'Janet';
  var age = 20;
  var greeting = 'My name is $name, ${age + 4} years old new Bitch⭐';
  print(greeting);
}

// (1) primitive type
// 모든 자료형의 부모는 object, class로 이루어져 있다. 이것으로 인해 dart가 객체 지향 언어 프로그램이라고 불린다.
// String name = 'Janet';
// bool alive = true;
// int age = 24;
// double height = 167.1;

// (2) Lists
// 리스트는 flutter에서 엄청 많이 쓰인다.
// first 메소드 : 배열의 첫번째 값을 반환한다.
// last 메소드 : 배열의 마지막 값을 반환한다.
// ...등등 뭐가 겁나 많다.
// vscode를 사용하는 경우, 배열의 맨 끝에 ,를 붙이면 자동으로 정렬해준다.
// collection if
  // var giveMeSix = true;
  // List<int> numbers = [
  //   1,
  //   2,
  //   3,
  //   4,
  //   5,
  //   if (giveMeSix) 6,
  // ];
  // == [1,2,3,4,5,] if(giveMeSix){number.add(6)과 같다}

  // (3) String Interpolation
  // = text에 변수를 추가하는 방법 
  // 변수명 앞에 $사인을 붙이면 변수를 대입할 수 있다.
  // var name = 'Janet';
  // var age = 20;
  // var greeting = 'My name is $name, ${age + 4} years old new Bitch⭐';
  // print(greeting); // My name is Janet, 24 years old new Bitch⭐
  // 달러싸인과, 연산이 필요한 경우 {}도 추가한다. 
  // 문자열 "~~~~" 안에 I'm과 같이 '가 들어가면 오류가 날 수 있다. 이 때 이스케이프 문자 \를 써줘야 오류가 나지 않는다!