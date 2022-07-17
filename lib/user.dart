class User {
  String email;
  String username;
  String birthdate;
  String password;

  User({
    required this.email,
    required this.username,
    required this.birthdate,
    required this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'email' : email,
      'username': username,
      'birthdate': birthdate,
      'password' : password,
    };
  }

  @override
  String toString() {
    return 'User{email : $email, username: $username, birthdate: $birthdate, password: $password}';
  }
}