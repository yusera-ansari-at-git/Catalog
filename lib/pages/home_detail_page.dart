import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Catalog item;
  const HomeDetailPage({super.key, required this.item});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Image.network(item.image),
          ],
        ).p16(),
      ),
    );
  }
}
