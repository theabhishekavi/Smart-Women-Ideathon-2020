import 'package:flutter/material.dart';
import 'package:smart_women/certifications.dart';
import 'package:smart_women/trainings.dart';

class SocialSelling extends StatefulWidget {
  @override
  _SocialSellingState createState() => _SocialSellingState();
}

class _SocialSellingState extends State<SocialSelling> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Social Selling',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            GestureDetector(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Trainings();
                }));
              },
              child: Container(
                width: width * 0.8,
                height: 60,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Level 1:-',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Trainings',
                        style: TextStyle(
                            color: Theme.of(context).accentColor, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Certifications();
                }));
              },
              child: Container(
                width: width * 0.8,
                height: 60,
                child: Card(
                  elevation: 5,
                  child: Row(
                    children: <Widget>[
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Level 2:-',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 30,
                      ),
                      Text(
                        'Certifications',
                        style: TextStyle(
                            color: Theme.of(context).accentColor, fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
