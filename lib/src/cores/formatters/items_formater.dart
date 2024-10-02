import '../../src.dart';
nameFormatter() => FilteringTextInputFormatter.allow(
    RegExp(r'^[a-zA-Z\u0600-\u06FF\u0750-\u077F\s]+$'));

priceFormatter() =>
    FilteringTextInputFormatter.allow(RegExp(r'^\d*\.?\d{0,2}$'));

emailFormatter() {
  return FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9@._-]'));
}

TextInputFormatter passwordFormatter() => FilteringTextInputFormatter.allow(
    RegExp(r'[a-zA-Z0-9!@#$%^&*()_+{}\[\]:;"\<>,.?/\\|-]'));
