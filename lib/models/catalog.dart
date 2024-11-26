class Catalog {
  final String? name;
  final String id;
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
}

class SubCatalog extends Catalog {
  SubCatalog(id) : super(id: id);
  myFunc() {
    if (id.isEmpty) {}
  }
}

class CatalogList {
  static const List<Catalog> list = [
    Catalog(
        id: "178",
        name: "Luci",
        desc:
            "Nulla ut erat id mauris vulputate elementum. Nullam varius. Nulla facilisi.\n\nCras non velit nec nisi vulputate nonummy. Maecenas tincidunt lacus at velit. Vivamus vel nulla eget eros elementum pellentesque.",
        price: 32,
        image: "http://dummyimage.com/175x100.png/5fa2dd/ffffff",
        color: "#dc60ae")
  ];
}
