//Модель данных User
class User {
  int age = 0;
  String firstName = '';
  String lastName = '';
  String phone = '';
  String email = '';
  String avatar = '';
  User(
      {this.age = 0,
      this.firstName = '',
      this.lastName = '',
      this.phone = '',
      this.email = '',
      this.avatar = ''});
}
