import 'package:flutter/material.dart';
import './pages/productDetail.dart';


class Products extends StatelessWidget {
  final List<Map<String,String>> products;
  final Function deleteProduct;

  Products(this.products,{this.deleteProduct});

  Widget _buildListItem(BuildContext context, int index) {
    return Card(
      child: Column(
        children: <Widget>[
          Image.asset(products[index]['image']),
          Text(products[index]['title']),
          ButtonBar(
            alignment: MainAxisAlignment.center,
            children: <Widget>[
              FlatButton(
                  onPressed: () => Navigator.push<bool>(
                      context, new MaterialPageRoute(
                      builder:(BuildContext context) => ProductDetail(
                          products[index]['title'],products[index]['image']
                      ),
                  ),
                  ).then((bool value){
                    if (value){
                      deleteProduct(index);
                    }
                  }),
                  child: new Text("Details"))
            ],
          ),
        ],
      ),
    );
  }

  Widget list() {
    return new ListView.builder(
      itemBuilder: _buildListItem,
      itemCount: products.length,
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget text = Center(
      child: new Text("No products found,please add some"),
    );
    return products.length > 0 ? list() : text;
  }
}
