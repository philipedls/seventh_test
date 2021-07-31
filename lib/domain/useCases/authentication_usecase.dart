abstract class IAuthenticationUseCase {
  Future<String> auth(Map<String, String> params);
}
