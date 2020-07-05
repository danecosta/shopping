import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white.withOpacity(0),
              elevation: 0.0,
              expandedHeight: 500.0,
              floating: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.asset(
                  "assets/product-1.png",
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ];
        },
        body: ListView(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
              ),
              child: Text(
                "BeoPlay Peaker",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text("Marca"),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Detalhes",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent varius eros eros, non sodales lacus suscipit nec. Cras et dictum ipsum. Suspendisse venenatis felis vel lorem mollis, ut rutrum massa elementum. Vivamus malesuada vitae massa dictum pharetra. Nulla id imperdiet elit, sed egestas est. Vestibulum neque ex, accumsan nec hendrerit at, varius id ipsum. Aenean laoreet urna eu massa vestibulum pharetra.",
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
