// spring의 controller에 연결 -> 여기를 통해 DB에 접근
class UserRepository {
  void login(String email, String password) {
    print("email : ${email}");
    print("password : ${password}");

    // * 통신코드

    // * 응답받기
    // 성공 -> 메소드 실행 / 실패 -> Exception
  }
}
