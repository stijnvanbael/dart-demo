class Item {
  String name;

  Item(String name) {
    this.name = name;
  }

  operator +(Item other) {
    return new Item('$name & ${other.name}');
  }

  @override
  String toString() {
    return name;
  }
}

main() {
  Item fire = new Item('Fire');
  Item ice = new Item('Ice');
  print(fire + ice);
}