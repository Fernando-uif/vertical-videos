import 'package:intl/intl.dart';

class HumanFormats {
  static String humanReadbleNumber(double formatNumber) {
    final formatterNumber = NumberFormat.compactCurrency(
      decimalDigits: 0,
      symbol: '',
    ).format(formatNumber);
    return formatterNumber;
  }
}
