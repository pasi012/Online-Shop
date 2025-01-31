

mixin PhoneNumberValidator {
  bool isValidPhone(phone) {
    return RegExp(r'(^(?:[+0]9)?[0-9]{10,12}$)').hasMatch(phone);
  }
}

mixin EmailValidator {
  bool isValidEmail(email) {
    return RegExp(
        r'^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }
}
