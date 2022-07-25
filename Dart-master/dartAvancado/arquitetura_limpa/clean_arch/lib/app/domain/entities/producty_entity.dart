class ProductyEntity {
  String name;
  String brand;
  String category;
  double price;
  int qtd;

  ProductyEntity({
    required this.name,
    required this.brand,
    required this.category,
    required this.price,
    required this.qtd,
  });

  bool verifyAvaileblety() {
    if (qtd > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool verifyPrice() {
    if (price > 0) {
      return true;
    } else {
      return false;
    }
  }

  bool discount() {
    if (qtd > 100) {
      return true;
    } else {
      return false;
    }
  }
}
