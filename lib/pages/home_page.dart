import 'dart:convert';

import 'package:catalog_app/models/catalog.dart';
import 'package:catalog_app/widgets/drawer.dart';
import 'package:catalog_app/widgets/item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void getJsonData() async {
    // await Future.delayed(Duration(seconds: 2));
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
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: (CatalogList.list != null)
          ? ListView.builder(
              itemBuilder: (context, index) =>ItemWidget(item: CatalogList.list![index]);
              ,
              itemCount: CatalogList.list!.length,
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
      drawer: const AppDrawer(),
    );
  }
}
