import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ItemWidget(item: CatalogList.list[index]);
        },
        itemCount: CatalogList.list.length,
      ),
      drawer: const AppDrawer(),
    );
  }
}
