nameValidation({required var value, required String name}) {
  if (value == null || value.isEmpty) {
    return 'Please enter $name';
  }
  return null;
}

emailValidation(var value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your email';
  }
  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
    return 'Please enter a valid email address';
  }
  return null;
}

passwordValidation(var value) {
  if (value == null || value.isEmpty) {
    return 'Please enter your password';
  }
  if (value.length < 8) {
    return 'Password must be at least 8 characters';
  }
  return null;
}

numberValidation({required var value, required String number}) {
  if (value == null || value.isEmpty) {
    return 'Please enter the $number';
  }
  return null;
}
