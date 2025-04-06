import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadableNumber(int number) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    );
    return formatterNumber.format(number);
  }
}