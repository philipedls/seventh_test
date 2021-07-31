import 'package:seventh_app/data/http/http_client.dart';
import 'package:seventh_app/data/models/auth_model.dart';
import 'package:seventh_app/data/models/auth_response_model.dart';
import 'package:seventh_app/domain/useCases/authentication_usecase.dart';

class AuthenticationImp implements IAuthenticationUseCase {
  final HttpClient _client;

  AuthenticationImp() : _client = HttpClient();

  @override
  Future<String> auth(Map<String, String> params) async {
    var body = AuthenticationModel.fromJson(params);
    var httpReponse = await _client.client.post('/login', data: body);
    var authResponseModel =
        AuthenticationResponseModel.fromJson(httpReponse.data);

    return authResponseModel.token;
  }
}
