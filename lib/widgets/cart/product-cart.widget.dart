import 'package:flutter/material.dart';

class ProductCart extends StatelessWidget {
  final String image;
  final String title;
  final double price;

  ProductCart({
    @required this.price,
    @required this.title,
    @required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      margin: EdgeInsets.all(5),
      child: Row(
        children: <Widget>[
          Container(
            width: 100,
            height: 100,
            margin: EdgeInsets.all(10),
            child: Image.asset(
              this.image,
              fit: BoxFit.fitWidth,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(this.title),
                Text(
                  "\$ $price",
                  style: TextStyle(color: Theme.of(context).primaryColor),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 30,
                  width: 120,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                  ),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text("-"),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text("1"),
                          onPressed: () {},
                        ),
                      ),
                      Container(
                        width: 40,
                        alignment: Alignment.center,
                        child: FlatButton(
                          child: Text("+"),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
