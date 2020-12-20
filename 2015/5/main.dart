import 'dart:io';

main() {
  var count = 0;
  File file = new File('./input.txt');
  var lines = file.readAsLinesSync();
  lines.forEach((line) {
    if(checkIfNice(line)){
      count++;
    }
  });
  print("Nice Strings: ${count}");
}

bool checkIfNice(String text) {
  if(text.contains(new RegExp(r'ab|cd|qp|xy'))) {
    return false;
  }

  var reg = new RegExp(r'a|e|i|o|u');
  if(reg.allMatches(text).length < 3) {
    return false;
  }

  if(!text.contains(new RegExp(r'([a-z])\1'))){
    return false;
  }

  return true;
}