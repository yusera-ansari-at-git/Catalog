import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_content.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_image.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogItem extends StatelessWidget {
  final Catalog catalogItem;
  const CatalogItem({
    super.key,
    required this.catalogItem,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return VxBox(
        child: Row(
      children: [
        Hero(
            tag: Key(catalogItem.id.toString()),
            child: CatalogImage(image: catalogItem.image)),
        CatalogContent(catalogItem: catalogItem)
      ],
    )).white.roundedLg.square(150).make().p12();
  }
}
