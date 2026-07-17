import 'dart:io';

int screen = 100;
int width = screen - 2;

void divider(String type) {
  if (type == 'top') {
    print('┌' + '─' * width + '┐');
  } else if (type == 'bottom') {
    print('└' + '─' * width + '┘');
  } else {
    print('|' + '─' * width + '|');
  }
}

void centerText(String text) {
  int spacing = ((width - text.length) / 2).toInt();
  print('│' + (' ' * spacing) + text.toUpperCase().padRight(width - spacing) + '│');
}

void leftText(String text) {
  int spacing = ((width - text.length) - 2).toInt();
  print('│  ' + text + ' ' * spacing + '│');
}

void printHeading(String text) {
  int spacing = ((width - text.length) / 2).toInt();
  divider('top');
  print('│' + (' ' * spacing) + text.toUpperCase().padRight(width - spacing) + '│');
  divider('bottom');
}

void textInput(String text) {
  stdout.write('${text.toUpperCase().padRight(40)}: ');
}