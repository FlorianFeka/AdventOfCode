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
  test('qjhvhtzxzqqjkmpb is nice', () {
    expect(checkIfNewNice('qjhvhtzxzqqjkmpb'), equals(true));
  });
  test('xxyxx is nice', () {
    expect(checkIfNewNice('xxyxx'), equals(true));
  });
  test('uurcxstgmygtbstg is naughty', () {
    expect(checkIfNewNice('uurcxstgmygtbstg'), equals(false));
  });
  test('ieodomkazucvgmuy is naughty', () {
    expect(checkIfNewNice('ieodomkazucvgmuy'), equals(false));
  });
}