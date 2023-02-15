class User {
  String password;
  String email;
  getUserData(){
    return [email,password];
  }
}
class GlobalVars{
  static User user;
}

User user = new User();


  List<Map> chatData = [];
