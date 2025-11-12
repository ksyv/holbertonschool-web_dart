void main(List<String> args) {
  int nb = int.parse(args[0]);
  String State;
  if (nb < 0) {
    State = 'is negative';
  } else if (nb == 0) {
    State = 'is zero';
  } else {
    State = 'is positive';
  }
  print('$nb $State');
}