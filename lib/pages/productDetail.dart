import 'package:flutter/material.dart';
import 'dart:async';

class ProductDetail extends StatelessWidget {

  final String title;
  final String imageUrl;

  ProductDetail(this.title,this.imageUrl);


  @override
  Widget build(BuildContext context) {
    return new WillPopScope(
      onWillPop: (){
        Navigator.pop(context,false);
        return Future.value(false);

      },
      child: new Scaffold(
          appBar: new AppBar(
            title: new Text(title),
          ),
          body: new Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset(imageUrl),
              Container(
                  padding: EdgeInsets.all(10.0), child: new Text(title)),
              Container(
                  padding: EdgeInsets.all(10.0),
                  child: RaisedButton(
                      color: Theme.of(context).accentColor,
                      child: new Text("DELETE"),
                      onPressed: () => Navigator.pop(context,true)),
              ),
            ],
          ),
      ),
    );
  }
}
