String longestUniqueSubstring(String str) {
  String maxSub = "";
  String currentSub = "";

  for (int i = 0; i < str.length; i++) {
    String char = str[i];
    
    if (currentSub.contains(char)) {
      int index = currentSub.indexOf(char);
      currentSub = currentSub.substring(index + 1);
    }
    
    currentSub += char;

    if (currentSub.length > maxSub.length) {
      maxSub = currentSub;
    }
  }
  return maxSub;
}