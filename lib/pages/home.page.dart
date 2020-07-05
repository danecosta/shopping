import 'package:flutter/material.dart';
import 'package:shopping/pages/product.page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(15),
        color: Color(0xFFF5F5F5),
        width: double.infinity,
        child: ListView(
          children: <Widget>[
            SizedBox(
              height: 10,
            ),
            search(),
            SizedBox(
              height: 30,
            ),
            Text(
              "Categories",
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 90,
              child: categoryList(),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 30,
                  ),
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
              child: productList(context),
            ),
          ],
        ),
      ),
    );
  }
}

Widget search() {
  return Container(
    height: 60,
    padding: EdgeInsets.only(
      left: 20,
    ),
    decoration: BoxDecoration(
      color: Colors.black.withOpacity(0.1),
      borderRadius: BorderRadius.all(
        Radius.circular(128),
      ),
    ),
    child: Row(
      children: <Widget>[
        Icon(Icons.search),
        Container(
          width: 300,
          padding: EdgeInsets.only(left: 10),
          child: TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: InputBorder.none,
              labelText: "Search...",
              labelStyle: TextStyle(
                color: Colors.blue,
                fontWeight: FontWeight.w300,
                fontSize: 16,
              ),
            ),
            style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
            ),
          ),
        ),
      ],
    ),
  );
}

Widget categoryList() {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        categoryItem("assets/Icon_Devices.png"),
        categoryItem("assets/Icon_Gadgets.png"),
        categoryItem("assets/Icon_Gaming.png"),
        categoryItem("assets/Icon_Mens_Shoe.png"),
        categoryItem("assets/Icon_Womens_Shoe.png"),
      ],
    ),
  );
}

Widget categoryItem(imagem) {
  return Container(
    width: 70,
    height: 70,
    margin: EdgeInsets.all(10),
    padding: EdgeInsets.all(10),
    decoration: BoxDecoration(
      color: Colors.white,
      boxShadow: [
        new BoxShadow(
          color: Colors.black12,
          offset: new Offset(1, 1),
          blurRadius: 5,
          spreadRadius: 2,
        ),
      ],
      borderRadius: BorderRadius.all(
        Radius.circular(64),
      ),
    ),
    child: Image.asset(imagem),
  );
}

Widget productList(BuildContext context) {
  return Container(
    child: ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        productItem(context, "BeoPlay Peaker", "755", "assets/product-1.png"),
        productItem(
            context, "Leather Wristwatch", "450", "assets/product-2.png"),
        productItem(
            context, "Smart Bluetooth Speaker", "900", "assets/product-3.png"),
        productItem(context, "Smart Luggage", "100", "assets/product-4.png"),
        productItem(context, "Smartphone Case", "99", "assets/product-5.png"),
      ],
    ),
  );
}

Widget productItem(context, nome, valor, imagem) {
  return Container(
    padding: EdgeInsets.all(10),
    margin: EdgeInsets.all(5),
    width: 170,
    color: Colors.black12,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProductPage(),
              ),
            );
          },
          child: Image.asset(
            imagem,
            width: 170,
            height: 170,
            fit: BoxFit.cover,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Container(
          height: 60,
          child: Text(
            nome,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Text(
          "Marca",
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w300,
          ),
        ),
        Text(
          "\$ $valor",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Color(0xFF00C569),
          ),
        ),
      ],
    ),
  );
}
