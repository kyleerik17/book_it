extension AmountUtil on String {
  String formatAmount({bool showCurrency = false, String currency = "F.CFA"}) {
    final chars = split('');
    String newString = '';
    for (int i = chars.length - 1; i >= 0; i--) {
      if ((chars.length - 1 - i) % 3 == 0 && i != chars.length - 1)
        newString = ' ' + newString;
      newString = chars[i] + newString;
    }
    return showCurrency == false ? newString : "$newString $currency";
  }
}
