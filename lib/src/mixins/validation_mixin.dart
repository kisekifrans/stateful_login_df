class ValidationMixin {
  String? validateEmail(value) {
    if (!value!.contains('@') || value!.length == 0) {
      return 'Please enter a valid email address.';
    }
    return null;
  }

  String? validatePassword(value) {
    if (value!.length < 6) {
      return 'Password must be at least 6 characters';
    }
    return null;
  }
}
