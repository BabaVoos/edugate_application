class ApiConstants {
  static const String baseUrl = 'http://edugate.somee.com/api/';
  static const String testingBaseUrl =
      'https://a0fb-196-129-178-41.ngrok-free.app/api/';
  static const String login = 'account/login';
  static const String logout = 'account/logout';
  static const String register = 'account/register';
  static const String uploadImage = 'UploadImage/uploadfile';
  static const String updateUserProfile = 'account';
  static const String getCourses = 'studentCourseGroup/AppStudentCourse';
  static const String getCourseAttendance = 'attendance/studentAttendance';
  static const String getAttendanceHistory = 'Attendance/history';
  static const String getImage = "UploadImage/getimage";
  static const String comapreImages = 'http://192.168.1.109:5000/predict';
  static const String takeAttendance = "Attendance/takeAttendance";
}

class ApiErrors {
  static const String badRequestError = "badRequestError";
  static const String noContent = "noContent";
  static const String forbiddenError = "forbiddenError";
  static const String unauthorizedError = "unauthorizedError";
  static const String notFoundError = "notFoundError";
  static const String conflictError = "conflictError";
  static const String internalServerError = "internalServerError";
  static const String unknownError = "unknownError";
  static const String timeoutError = "timeoutError";
  static const String defaultError = "defaultError";
  static const String cacheError = "cacheError";
  static const String noInternetError = "noInternetError";
  static const String loadingMessage = "loading_message";
  static const String retryAgainMessage = "retry_again_message";
  static const String ok = "Ok";
  static const String badResponse = "something went wrong";
}
