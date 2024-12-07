import 'dart:convert';

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_content.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_header.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_image.dart';
import 'package:catalog_app/widgets/home_widgets/catalog_list_widget.dart';
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
