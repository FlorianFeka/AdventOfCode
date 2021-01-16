import 'dart:io';

void main(List<String> arguments) {
  var count = 0;
  var newCount = 0;
  var file = File('./input.txt');
  var lines = file.readAsLinesSync();
  lines.forEach((line) {
    if(checkIfNice(line)){
      count++;
    }
    if(checkIfNewNice(line)){
      newCount++;
    }
  });
  print('Nice Strings: ${count}');
  print('New Nice Strings: ${newCount}');
}

bool checkIfNewNice(String text) {
  if(!text.contains(RegExp(r'([a-z][a-z]).*\1'))) {
    return false;
  }

  if(!text.contains(RegExp(r'([a-z])[a-z]\1'))) {
    return false;
  }

  return true;
}


bool checkIfNice(String text) {
  if(text.contains(RegExp(r'ab|cd|pq|xy'))) {
    return false;
  }

  var regExp = RegExp(r'a|e|i|o|u');
  if(regExp.allMatches(text).length < 3) {
    return false;
  }

  if(!text.contains(RegExp(r'([a-z])\1'))){
    return false;
  }

  return true;
}