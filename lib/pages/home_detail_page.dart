import 'package:catalog_app/main.dart';
import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Catalog item;
  const HomeDetailPage({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(10),
        color: AppThemeData.creamColor,
        child: OverflowBar(
          spacing: 5,
          alignment: MainAxisAlignment.spaceBetween,
          overflowAlignment: OverflowBarAlignment.end,
          overflowSpacing: 2,
          overflowDirection: VerticalDirection.down,
          children: [
            "\$${item.price}".text.xl3.bold.make(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: AppThemeData.darkBluishColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
              ),
              onPressed: () {},
              child: Text(
                "buy",
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ).pOnly(right: 10),
      ),
      appBar: AppBar(),
      backgroundColor: AppThemeData.darkBluishColor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
                child: Hero(
              tag: Key(item.id.toString()),
              child: Image.network(
                item.image,
                fit: BoxFit.cover,
              ),
            )),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                item.name!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                item.desc,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ).p16(),
      ),
    );
  }
}
