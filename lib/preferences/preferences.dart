import 'package:get_storage/get_storage.dart';

class Preferences {
  final storage = GetStorage();

  void setUser(data) => storage.write("userData", data);
  getUser() => storage.read("userData");
  getName() => storage.read("userData")["userInfo"]["name"];
  getUserName() => storage.read("userData")["userInfo"]["username"];
  getUserData() => storage.read("userData");

  void setUserId(String userId) => storage.write("userId", userId);
  getUserId() => storage.read("userData")["userInfo"]["uuid"];

  void setUserRole(String userRole) => storage.write("userRole", userRole);
  getUserRole() => storage.read("userRole");

  void setIsLogin(bool val) => storage.write("isLogin", val);
  getIsLogin() => storage.read("isLogin");

  void setUserToken(String token) => storage.write("token", token);
  void setUserTokenBPRO(String token) => storage.write("token1", token);
  getToken() => storage.read("token");
  getTokenBPRO() => storage.read("token1");

  void setWhseShipNo(String whseShipNo) =>
      storage.write("whseShipNo", whseShipNo);

  getWhseShipNo() => storage.read("whseShipNo");

  void setIntroScreen(bool val) => storage.write("isTutorialShown", val);
  getIntroScreen() => storage.read("isTutorialShown");

  void resetFav() => storage.write(getUserName(), []);
  void setFav(List names) => storage.write(getUserName(), names);
  getFav() => storage.read(getUserName());
}
