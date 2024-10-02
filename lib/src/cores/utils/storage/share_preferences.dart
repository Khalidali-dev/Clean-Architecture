import '../../../src.dart';

class SharePreferences {
  static late SharedPreferences pref;

// INIT PREFERENCES
  static initPreferences() async =>
      pref = await SharedPreferences.getInstance();

  // SET STRING

  static setString({required String key, value}) async =>
      await pref.setString(key, value);

  // GET STRING

  static getString(String key) => pref.getString(key);

  // SET BOLEAN

  static setBool({required String key, value}) async =>
      await pref.setBool(key, value);

  // GET BOOLEAN

  static getBool(String key) => pref.getBool(key);

  static clearValue(String key) => pref.remove(key);
}
