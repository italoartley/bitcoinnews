class Routes{
  static const String authService =
      "https://identitytoolkit.googleapis.com/v1/";

  static const String apiKey = "AIzaSyAJyOBB9bmJ34UdODZdsTSa5zkLwFA9GyA";

  String signIn() {
    return authService + "accounts:signInWithPassword?key=" + apiKey;
  }

  String signUp() {
    return authService + "accounts:signUp?key=" + apiKey;
  }
}
