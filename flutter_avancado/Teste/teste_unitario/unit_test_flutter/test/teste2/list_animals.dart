class Animals {
  List<String> animals = ["d*og", "b*ird", "cat"];

  int index = 0;

  void animalsNext() {
    index++;
    print(animals[index]);
  }
}
