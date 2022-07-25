import 'dart:convert';
import "package:flutter_application_1/cosntants/routes.dart";
import 'package:http/http.dart' as http;

class SignUpService {
  signUp(String email, String password) async {
    Uri uri = uri.https(Routes.urlSignUp, "/");
    http.Response response = await http.post(
      uri,
      body: json.encode(
        {"email": email, "password": password, "returnSecureToken": true},
      ),
    );
  }
}
