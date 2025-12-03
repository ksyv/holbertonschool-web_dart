class User {
  String ? name;
  String showName() {
    String safeName = name ?? 'Inconnu';
    return ("Hello ${safeName}");
  }
}