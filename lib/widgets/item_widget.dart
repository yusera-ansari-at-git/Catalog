import 'package:catalog_app/models/catalog.dart';
import 'package:flutter/material.dart';

class ItemWidget extends StatelessWidget {
  final Catalog item;
  const ItemWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Container(
        constraints: BoxConstraints(maxHeight: 200, minHeight: 200),
        alignment: Alignment.center,
        decoration: BoxDecoration(),
        child: ListTile(
          isThreeLine: true,
          onTap: () {
            print(item.name! + " pressed");
          },
          leading: Image.network(
            item.image,
            width: 100,
          ),
          title: Text(item.name!),
          subtitle: Text(
            item.desc,
            maxLines: 5,
            style:
                TextStyle(overflow: TextOverflow.ellipsis, color: Colors.black),
          ),
          trailing: Text(
            "\$${item.price}",
            textScaler: TextScaler.linear(1.2),
            style: TextStyle(
              color: Colors.deepPurple,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
