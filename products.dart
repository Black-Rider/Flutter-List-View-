import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  final List<String> products;

  Products(this.products);

Widget _buildProductItem(BuildContext context, int index){
  return Card(
    child: Column(
      children: <Widget>[
        Image(image:AssetImage('assets/food.jpeg')),
        Text(products[index])
      ],
    ),
  );


}

  @override
  Widget build(BuildContext context) {
    return products.length > 0 ? ListView.builder(
      itemBuilder: _buildProductItem,
      itemCount: products.length,
    ): Center(child: Text('Add something you dumb!!x'),);
  }
}
