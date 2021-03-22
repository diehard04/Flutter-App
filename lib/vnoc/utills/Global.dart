import 'package:shared_preferences/shared_preferences.dart';

class Global {

  static SharedPreferences _sharedPreferences;

  static Future init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }
}