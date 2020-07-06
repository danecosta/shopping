import 'package:flutter/material.dart';
import 'package:shopping/widgets/category/category-list.widget.dart';
import 'package:shopping/widgets/product/product-card-list.widget.dart';
import 'package:shopping/widgets/search-box.widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            SearchBox(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: Theme.of(context).textTheme.headline1,
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: CategoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: Theme.of(context).textTheme.headline1,
                ),
                FlatButton(
                  child: Text(
                    "See all",
                  ),
                  onPressed: () {},
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 350,
              child: ProductCardList(scrollDirection: Axis.horizontal),
            ),
          ],
        ),
      ),
    );
  }
}
