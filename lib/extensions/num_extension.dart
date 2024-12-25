part of 'extensions.dart';

extension NumExtension on num {
  String get formatComma => NumberFormat().format(this);

  String formatPrice() {
    String priceUnit = '\$';
    return '$priceUnit${toStringAsFixed(2)}';
  }
}
