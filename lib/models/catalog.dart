class Catalog {
  final String? name;
  final int id;
  final String image;
  final String color;
  final int price;
  final String desc;
  const Catalog(
      {this.color = "#fff",
      this.desc = "",
      required this.id,
      this.image = "",
      this.name = "",
      this.price = 0});
  factory Catalog.fromMap(Map<String, dynamic> map) {
    return Catalog(
        id: map["id"],
        color: map["color"],
        desc: map["desc"],
        image: map["image"],
        name: map["name"],
        price: map["price"]);
  }
  toMap() => {
        "id": id,
        "color": color,
        "desc": desc,
        "image": image,
        "name": name,
        "price": price
      };
}

class SubCatalog extends Catalog {
  SubCatalog(id) : super(id: id);
  myFunc() {}
}

class CatalogList {
  static List<Catalog>? list;
}
