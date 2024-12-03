import 'dart:convert';

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:catalog_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void getJsonData() async {
    await Future.delayed(Duration(seconds: 2));
    try {
      final res = await rootBundle.loadString("assets/files/catalog.json");

      setState(() {
        CatalogList.list = List.from(json.decode(res)["products"])
            .map<Catalog>((item) => Catalog.fromMap(item))
            .toList();
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    getJsonData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppThemeData.creamColor,
      // appBar: AppBar(
      //   title: Text("Home"),
      // ),
      body: SafeArea(
        child: Container(
          padding: Vx.m32,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CatalogHeader(),
              if (CatalogList.list != null && CatalogList.list!.isNotEmpty)
                CatalogListWidget().expand()
              else
                Expanded(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                )
            ],
          ),
        ),
      ),
      drawer: const AppDrawer(),
    );
  }
}

class CatalogListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return CatalogItem(
          catalogItem: CatalogList.list![index],
        );
      },
      itemCount: CatalogList.list!.length,
    );
  }
}

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
        CatalogImage(image: catalogItem.image),
        Expanded(
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
                spacing: 5,
                alignment: MainAxisAlignment.spaceBetween,
                overflowAlignment: OverflowBarAlignment.end,
                overflowSpacing: 2,
                overflowDirection: VerticalDirection.down,
                children: [
                  "\$${catalogItem.price}".text.xl.bold.make(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(10),
                        ),
                      ),
                    ),
                    onPressed: () {},
                    child: "buy".text.make(),
                  )
                ],
              ).pOnly(right: 10)
            ],
          ).p8(),
        ),
      ],
    )).white.roundedLg.square(150).make().p16();
  }
}

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

class CatalogHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.color(AppThemeData.darkBluishColor).bold.make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }
}
