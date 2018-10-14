import 'package:flutter/material.dart';

import 'products.dart';
import 'product_control.dart';

class ProductsManager extends StatefulWidget {
  final Map<String,String> startString;
  ProductsManager({this.startString});
  @override
  State<StatefulWidget> createState() {
    return _ProductsManagerState();
  }
}

class _ProductsManagerState extends State<ProductsManager> {
//   would still work if we write final in front as
//   final enables to change existing value but not change them or reassign(=)
//   lists and objects are reference types
//   to make that change of existing value we make it "const"
  List<Map<String,String>> _products = [];

  @override
  void didUpdateWidget(ProductsManager oldWidget) {
    super.didUpdateWidget(oldWidget);
  }

  void _addProduct(Map<String,String> product) {
    setState(() {
      _products.add(product);
      print(_products);
    });
  }
  void _deleteProduct(int index){
    setState(() {
      _products.removeAt(index);
      
    });
  }

  @override
  void initState() {
    super.initState();
    if (widget.startString != null) {
      _products.add(widget.startString);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        new Container(
          margin: EdgeInsets.all(10.0),
          child: ProductControl(_addProduct),
        ),
        new Expanded(child: Products(_products,deleteProduct: _deleteProduct)),
      ],
    );
  }
}
