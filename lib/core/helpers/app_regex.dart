class AppRegex {
  static bool isEmailValid(String email) {
    return RegExp(r'^\d+@hti\.edu\.eg$').hasMatch(email);
  }

  static bool isPasswordValid(String password) {
    return RegExp(
            r"^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$")
        .hasMatch(password);
  }

  static bool isUserNameValid(String username) {
    return RegExp(r'^\w+\s\w+(\s\w+){1,2}(\s\w+)?$').hasMatch(username);
  }

  static bool isPhoneNumberValid(String phoneNumber) {
    return RegExp(r'^(010|011|012|015)[0-9]{8}$').hasMatch(phoneNumber);
  }

  static bool isQRCodeDataValid(String qrCodeData) {
    return RegExp(r"(-.*){5,}").hasMatch(qrCodeData);
  }
}
