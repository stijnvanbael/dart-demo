// Lambdas

class Sale {
  List lines = [];

  void add(String product, int quantity) => lines.add(new SaleLine(product, quantity));

  int totalQuantity() =>
      lines.map((line) => line.quantity)
          .reduce((q1, q2) => q1 + q2);
}

class SaleLine {
  String product;
  int quantity;

  SaleLine(String product, int quantity) {
    this.product = product;
    this.quantity = quantity;
  }
}

main() {
  Sale sale = new Sale();

  sale..add('Lipton Ice Tea 1L', 2)..add('Coca Cola 1L', 3)..add('Spa Rood 1L', 4);

  print('Total quantity: ${sale.totalQuantity}');
}