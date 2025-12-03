import '6-password.dart';

class User extends Password {
  final int id;
  final String name;
  final int age;
  final double height;
  
  late String? _user_password;

  User({
    required this.id, 
    required this.name, 
    required this.age, 
    required this.height,
    required String? user_password,
  }) {
    this.user_password = user_password; 
  }

  static User fromJson(Map<dynamic, dynamic> userJson) {
    return User(
      id: userJson['id'] as int,
      name: userJson['name'] as String,
      age: userJson['age'] as int,
      height: userJson['height'] as double,
      user_password: userJson['user_password'] as String?, 
    );
  }

  set user_password(String? value) {
    this._user_password = value; 
    super.password = value;     
  }
  
  String? get user_password => _user_password;
  
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'age': age,
      'height': height,
    };
  }
  
  @override
  String toString() {
    final bool passwordValid = super.isValid(); 
    
    return 'User(id : $id ,name: $name, age: $age, height: $height, Password: $passwordValid)';
  }
}