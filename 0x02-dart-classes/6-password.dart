class Password {
  String _password = '';

  Password({required String password}) {
    _password = password;
  }

  String get password => _password;

  set password(String value) => _password = value;

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) {
      return false;
    }

    if (_password.contains(RegExp(r'[A-Za-z]')) && _password.contains(RegExp(r'[0-9]'))) {
      return true;
    } else {
      return false;
    }
  }

  @override
  String toString() {
    return "Your Password is: $_password";
  }
}
