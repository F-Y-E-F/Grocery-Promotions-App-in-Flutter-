import 'package:flutter/material.dart';
import 'package:grocerypromotionsapp/database/Product.dart';
import 'package:grocerypromotionsapp/screens/home/ItemTile.dart';
import 'package:provider/provider.dart';
class ItemsList extends StatefulWidget {
  @override
  _ItemsListState createState() => _ItemsListState();
}

class _ItemsListState extends State<ItemsList> {



  @override
  Widget build(BuildContext context) {
    final products = Provider.of<List<Product>>(context) ?? [];

    return  ListView.builder(
        itemBuilder: (BuildContext context, int index) {
      return ItemTile(products[index]);
    },
    itemCount: products.length);
  }
}
