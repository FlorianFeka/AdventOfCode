import 'package:test/test.dart';

import '../bin/NiceStrings.dart';

void main() {
  test('ugknbfddgicrmopn is nice', () {
    expect(checkIfNice('ugknbfddgicrmopn'), equals(true));
  });
  test('aaa is nice', () {
    expect(checkIfNice('aaa'), equals(true));
  });
  test('jchzalrnumimnmhp is naughty', () {
    expect(checkIfNice('jchzalrnumimnmhp'), equals(false));
  });
  test('haegwjzuvuyypxyu is naughty', () {
    expect(checkIfNice('haegwjzuvuyypxyu'), equals(false));
  });
  test('dvszwmarrgswjxmb is naughty', () {
    expect(checkIfNice('dvszwmarrgswjxmb'), equals(false));
  });
}