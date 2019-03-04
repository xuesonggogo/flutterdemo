import 'package:shared_preferences/shared_preferences.dart';

class DataUtils {
  static final String SP_AC_TOKEN = "accessToken";
  static final String SP_RE_TOKEN = "refreshToken";
  static final String SP_UID = "uid";
  static final String SP_IS_LOGIN = "isLogin";
  static final String SP_EXPIRES_IN = "expiresIn";
  static final String SP_TOKEN_TYPE = "tokenType";

  static final String SP_USER_NAME = "name";
  static final String SP_USER_ID = "id";
  static final String SP_USER_LOC = "location";
  static final String SP_USER_GENDER = "gender";
  static final String SP_USER_AVATAR = "avatar";
  static final String SP_USER_EMAIL = "email";
  static final String SP_USER_URL = "url";

  static final String SP_COLOR_THEME_INDEX = "colorThemeIndex";

  static double statusBarHeight = 0.0;

  // 设置选择的主题色
  static setColorTheme(int colorThemeIndex) async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt(SP_COLOR_THEME_INDEX, colorThemeIndex);
  }

  static Future<int> getColorThemeIndex() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    return sp.getInt(SP_COLOR_THEME_INDEX);
  }

  // 是否登录
  static Future<bool> isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool b = sp.getBool(SP_IS_LOGIN);
    return b != null && b;
  }


}
