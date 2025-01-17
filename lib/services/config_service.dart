import 'dart:convert';
import 'package:http/http.dart';

class ConfigService {
  final String _url = '';
      //Url de tu backend;

  Future<Map<String, dynamic>> getAllConfig() async {
    Map<String, dynamic> config = {};
    Uri uri = Uri.parse("$_url.json");
    Response response = await get(uri);
    config = jsonDecode(response.body);
    return config;
  }
}
