bool isPalindrome(String s) {
  if (s.length < 3) {
    return false;
  }
  String reversed = s.split('').reversed.join('');
  return s == reversed;
}

String longestPalindrome(String s) {
  if (s.length < 3) {
    return "none";
  }

  String longest = "none";
  int maxLength = 0;

  for (int i = 0; i < s.length; i++) {
    for (int j = i + 1; j <= s.length; j++) {
      String substring = s.substring(i, j);

      if (isPalindrome(substring) && substring.length > maxLength) {
        longest = substring;
        maxLength = substring.length;
      }
    }
  }

  return longest;
}
