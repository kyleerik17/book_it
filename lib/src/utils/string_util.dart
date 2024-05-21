extension StringUtil on String {
  String get addZero {
    return length < 2 ? "0$this" : this;
  }

  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}
