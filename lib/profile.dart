import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              width: width,
              height: 380,
              child: Stack(
                children: <Widget>[
                  Container(
                    width: width,
                    height: 300,
                    color: Theme.of(context).primaryColor.withOpacity(0.7),
                  ),
                  Positioned(
                    top: 80,
                    left: width * 0.35,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        ClipRRect(
                          borderRadius: BorderRadius.circular(100.0),
                          child: Image.asset(
                            'assets/images/profile.jpg',
                            width: 120,
                            height: 120,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          'Smart Women',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                  Positioned(
                    top: 250,
                    left: 15,
                    child: Card(
                      elevation: 5.0,
                      child: Container(
                        width: width * 0.9,
                        height: 100,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text('Reward Points collected till Now :- 125'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text('Status :- General'),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Need 25 more points to become Smart Women Ambassador',
                                  style: TextStyle(
                                      color: Theme.of(context).accentColor),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.email,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('smartwomen@smartedge.com'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.phone,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('+62 21 6539-0605'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.group,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Add to Groups'),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(
                        Icons.message,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text('Show All Community'),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {},
              child: Text(
                'Logout',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
