extension PhoneNumberUtil on String {
  String get removeSpaces {
    return replaceAll(RegExp(r"\s+\b|\b\s"), "");
  }

  bool get isPhoneNumberValid {
    if (length < 10) return false;
    return removeSpaces.startsWith(RegExp(r"^(01|05|07)"));
  }

  String get formattedPhone {
    var _phone = removeSpaces;
    //var _phone = newCleanPhone;
    var buffer = StringBuffer();
    for (int i = 0; i < _phone.length; i++) {
      buffer.write(_phone[i]);
      var nonZeroIndex = i + 1;
      if (nonZeroIndex % 2 == 0 && nonZeroIndex != _phone.length) {
        buffer.write(' ');
      }
    }
    return buffer.toString().trim();
  }
}
