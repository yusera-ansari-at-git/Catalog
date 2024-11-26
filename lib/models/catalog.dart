class Catalog {
  final String? name;
  final String id;
  final String image;
  final String color;
  final int price;
  final String desc;
  Catalog(
      {this.color = "#fff",
      this.desc = "",
      required this.id,
      this.image = "",
      this.name = "",
      this.price = 0});
}
