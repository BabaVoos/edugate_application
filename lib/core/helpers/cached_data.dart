import 'package:edugate_applocation/core/networking/cache_helper.dart';

class CachedData {
  static String? userName;
  static String? email;
  static String? phoneNumber;
  static String? token;
  static String? displayName;

  static Future<void> getUserData({required List<Object?> userData}) async {
    userName = userData[0].toString();
    email = userData[1].toString();
    phoneNumber = userData[2].toString();
    token = userData[3].toString();
    displayName = userData[4].toString();
  }

    static getAndSaveUserData() async {
    var userData = await CacheHelper.getData(key: 'USER_DATA');
    await CachedData.getUserData(userData: userData);
  }
}
