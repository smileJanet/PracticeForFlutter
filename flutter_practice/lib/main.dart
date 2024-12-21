void main() {
  const apiKey = '1234567890';
  const apiKey = fetchApi();
}

// (1) 반드시 세미콜론; 을 붙여야 한다.

// (2) main 함수는 모든 Dart 프로그램의 entry point..
// main함수에서 작성한 코드가 호출된다. 만약 main함수가 없으면 실행되지 않음.
// == 이것은 자바와 마찬가지!

// (3) 변수 타입 지정
// 메소드 내 혹은 지역변수로서 사용할 때 var
// class내에서 변수나(=전역변수) property를 사용할 땐 타입 지정

// (4) Dynamic Type
// dynamic : 여러가지 타입을 가질 수 있는 변수에 사용하는 키워드
// 단, 남발하면 절대 안된다! 반드시 필요할 때만 사용할 것
//  dynamic name;
//  name = 'Janet';
//  name = 123;
//  name = true;

  // dynamic person;
  // if(person is int){ // 이런식으로 변수의 자료형을 모를 때 확인할 수 있다. 
  //   person.
  // }

  // (5) Null 
  // null safety 
  // 개발자가 null값을 참조할 수 없도록 하는 것
  // String janet = 'Janet';
  // janet = null; => janet이 null이므로 반드시 에러
  // String? janet = 'Janet';
  // janet = null; => janet이 null일수도 있고 아닐수도 있으므로 에러 안남

  // (6) final(상수)
  // var대신 final자료형을 붙이면 그 변수는 수정할 수 없다.
  // == 즉 상수를 만들 수 있다는 의미

  // (7) late
  // var이나 final 앞에 late를 붙일 수 있다.
  // late 키워드는 API에서 데이터를 불러온 후, 나중에 그 변수를 삽입할 때 사용할 수 있다.
  // late final String name;
  // name = 'Janet';
  // 따라서 late는 API 작업을 할 때 많이 볼 수 있는 키워드이다. 

  // (8) const
  // 우리가 생각하는 상수는 final이 하는 것이고,
  // dart의 const는 우리가 생각하는 것과 느낌이 조금 다르다.
  // "매우 중요!" : const는 컴파일 할 때 알고 있어야 하는 상수이다.
  // ex) 
  // const apiKey = '1234567890'; => 하드코딩 되어 있으므로 컴파일 시점에선 이 값을 이미 알고 있다. (ok)
  // const apiKey = fetchApi(); => api로부터 값을 받아와야 하기 때문에 컴파일 시점에선 이 값을 모른다. (never!)
  // 따라서 위 경우 차라리 final apiKey = fetchApi();가 더 어울릴 것이다. 
  // 따라서 const는 컴파일할 때 그 상수값을 알고 있는 상태, 즉 compile-time constant여야 한다!