class Password {
  String? _password;

  set password(String? value) {
    _password = value;
  }
  
  String? get password => _password;

  bool isValid() {
    if (_password == null) {
      return false;
    }

    final String pwd = _password!;
    final int length = pwd.length;

    if (length < 8 || length > 16) {
      return false;
    }

    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasDigit = false;
    
    for (int i = 0; i < length; i++) {
      final int charCode = pwd.codeUnitAt(i);
      
      if (charCode >= 'A'.codeUnitAt(0) && charCode <= 'Z'.codeUnitAt(0)) {
        hasUppercase = true;
      } 
      else if (charCode >= 'a'.codeUnitAt(0) && charCode <= 'z'.codeUnitAt(0)) {
        hasLowercase = true;
      } 
      else if (charCode >= '0'.codeUnitAt(0) && charCode <= '9'.codeUnitAt(0)) {
        hasDigit = true;
      }
      
      if (hasUppercase && hasLowercase && hasDigit) {
        break; 
      }
    }
    
    return hasUppercase && hasLowercase && hasDigit;
  }
}