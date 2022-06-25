void main() {
  print(stringToInt('1'));
}

int stringToInt(String text) {
  int value;
  try {
    int value = int.parse(text);
  } catch (e) {
    value = 0;
  }

  return value;
}
