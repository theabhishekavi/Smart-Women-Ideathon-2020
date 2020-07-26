import 'package:flutter/material.dart';

class ProductDetail extends StatefulWidget {
  final String productName, productImage;
  ProductDetail({this.productName, this.productImage});
  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Products'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Container(
                color: Colors.white,
                width: double.infinity,
                height: 200,
                child: FittedBox(
                  child: Image.asset(
                    widget.productImage,
                  ),
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                widget.productName,
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 8.0,
              ),
              child: Row(
                children: <Widget>[
                  Card(
                    elevation: 3,
                    child: Text(
                      '\$ 54',
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        '\$ 60',
                        style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 16,
                            decoration: TextDecoration.lineThrough),
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '10% off',
                        style: TextStyle(color: Colors.green, fontSize: 16),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              child: RaisedButton(
                // color: Theme.of(context).primaryColor,
                child: Text(
                  'Share this Item! ',
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                onPressed: () {},
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey[100],
            height: 60,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: InkWell(
                    onTap: () {},
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.shopping_basket,
                          color: Colors.blue,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "Buy Now",
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                  ),
                ),
                VerticalDivider(
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.shopping_cart,
                        color: Colors.blue,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Add to Cart",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        elevation: 0.0,
      ),
    );
  }
}
