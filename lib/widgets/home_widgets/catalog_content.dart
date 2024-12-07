import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogContent extends StatelessWidget {
  final Catalog catalogItem;
  const CatalogContent({super.key, required this.catalogItem});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          catalogItem.name!.text.bold.lg
              .color(AppThemeData.darkBluishColor)
              .make(),
          catalogItem.desc.text.wrapWords(true).ellipsis.maxLines(3).make(),
          10.heightBox,
          OverflowBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\$${catalogItem.price}".text.bold.make(),
              TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                ),
                onPressed: () {},
                child: "Add to cart".text.make(),
              )
            ],
          ).pOnly(right: 10)
        ],
      ).p8(),
    );
  }
}
