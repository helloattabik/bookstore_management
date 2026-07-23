import 'dart:io';

const int screenWidth = 120;
const int contentWidth = screenWidth - 2;
const String padding = '  ';

void divider(String type) {
  if (type == 'top')            print('┌${'─' * contentWidth}┐');
  else if (type == 'bottom')    print('└${'─' * contentWidth}┘');
  else if (type == 'middle')    print('├${'─' * contentWidth}┤');
  else if (type == 'noborder')  print('─${'─' * contentWidth}─');
}


void printText(String text, {String align = 'left'}) {
  if (align == 'center') {
    int leftSpace = ((contentWidth - text.length) / 2).toInt();
    print('│${' ' * leftSpace}${text.toUpperCase().padRight(contentWidth - leftSpace)}│');
  } else if (align == 'right') {
    print('│${text.padLeft(contentWidth - padding.length)}$padding│');
  } else if (align == 'left'){
    print('│$padding${text.padRight(contentWidth - padding.length)}│');
  }
}


void printHeading(String text) {
  divider('top');
  print('│$padding${text.toUpperCase().padRight(contentWidth - padding.length)}│');
  divider('bottom');
}


String stringInput(String value, {int tab = 10}) {
  stdout.write(' $padding${value.padRight(tab)} : ');
  return stdin.readLineSync() ?? '';
}

double doubleInput(String text, {int tab = 10}) {
  while (true) {
    stdout.write(' $padding${text.padRight(tab)} : ');
    var value = double.tryParse(stdin.readLineSync() ?? '');
    if (value != null) {
      return value;
    }
    print('\n[ERROR] Please enter a valid number.\n');
  }
}

void pause({String message='Press Enter to main menu...'}) {
  print('\n${message}');
  stdin.readLineSync();
}