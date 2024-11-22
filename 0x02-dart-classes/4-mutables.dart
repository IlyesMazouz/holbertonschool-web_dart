class Password {
  String _password = '';

  Password({required String password}) {
    this._password = password;
  }

  String get password {
    return _password;
  }

  set password(String value) {
    _password = value;
  }

  bool isValid() {
    if (password.length < 8 || password.length > 16) {
      return false;
    }

    if (password.contains(RegExp(r'[A-Za-z]')) &&
        password.contains(RegExp(r'[0-9]')))
      return true;
    else
      return false;
  }

  @override
  String toString() {
    return "Your Password is: ${password}";
  }
}
