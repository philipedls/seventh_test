class AuthenticationModel {
  final String user;
  final String password;

  AuthenticationModel({required this.user, required this.password});

  factory AuthenticationModel.fromJson(Map<String, dynamic> json) =>
      AuthenticationModel(user: json['username'], password: json['password']);

  Map<String, dynamic> toJson() => {'username': user, 'password': password};
}
