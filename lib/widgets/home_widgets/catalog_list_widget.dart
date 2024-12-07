import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/pages/home_detail_page.dart';
import 'package:catalog_app/pages/home_page.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_item.dart';
import 'package:catalog_app/utils/app_routes.dart';
import 'package:flutter/material.dart';

class CatalogListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
      shrinkWrap: true,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () => {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) =>
                    HomeDetailPage(item: CatalogList.list![index]),
              ),
            ),
          },
          child: CatalogItem(
            catalogItem: CatalogList.list![index],
          ),
        );
      },
      itemCount: CatalogList.list!.length,
    );
  }
}
