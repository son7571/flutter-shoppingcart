import 'package:flutter/material.dart';
import 'package:flutter_shoppingcart/component/color_icon.dart';
import 'package:flutter_shoppingcart/component/selector_header.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appbar(),
      body: Column(
        children: [
          SelectorHeader(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text("Urban Soft AL 10.0"),
                      Spacer(),
                      Text("\$699"),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Spacer(),
                      RichText(
                        text: TextSpan(
                          style: TextStyle(fontSize: 18),
                          children: [
                            TextSpan(text: "riview"),
                            TextSpan(
                              text: " (26)",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Text("Color Options"),
                  Row(
                    children: [
                      ColorIcon(rGap: 10),
                      ColorIcon(rGap: 10),
                      ColorIcon(rGap: 10),
                      ColorIcon(rGap: 10),
                      ColorIcon(),
                    ],
                  ),
                  Align(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Add to Cart"),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  AppBar _appbar() {
    return AppBar(
      leading: IconButton(
        onPressed: () {},
        icon: Icon(Icons.arrow_back),
      ),
      actions: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.shopping_cart),
        ),
      ],
    );
  }
}
