import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogImage extends StatelessWidget {
  final String image;
  const CatalogImage({super.key, required this.image});
  @override
  Widget build(BuildContext context) {
    return Image.network(
      image,
    )
        .box
        .p8
        .rounded
        .color(AppThemeData.creamColor)
        .make()
        .p16()
        .w40(context)
        .h32(context);
  }
}
