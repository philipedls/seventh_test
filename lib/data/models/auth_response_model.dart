class AuthenticationResponseModel {
  final String token;

  AuthenticationResponseModel({required this.token});

  factory AuthenticationResponseModel.fromJson(Map<String, dynamic> json) =>
      AuthenticationResponseModel(token: json['token']);

  Map<String, dynamic> toJson() => {'token': token};
}
