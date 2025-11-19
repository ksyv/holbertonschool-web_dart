import '9-palindrome.dart';

String longestPalindrome(String s){
    String bestPalindrome = "none";
    int maxLength = 0;

    for (int i = 0; i < s.length; i++) {
        for (int j = i + 1; j <= s.length; j++) {
            String sub = s.substring(i, j);
            if (isPalindrome(sub)) {
                if (sub.length > maxLength) {
                    maxLength = sub.length;
                    bestPalindrome = sub;
                }
            }
        }
    }
    return bestPalindrome;
}