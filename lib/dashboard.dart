import 'package:flutter/material.dart';
import 'package:smart_women/profile.dart';
import 'package:smart_women/social_selling.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Column(
        children: <Widget>[
          GridView(
            shrinkWrap: true,
            padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1),
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return SocialSelling();
                  }));
                },
                child: Card(
                  margin: const EdgeInsets.all(10.0),
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child: Image.asset(
                          'assets/images/social-selling.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text('Social Selling'),
                    ],
                  ),
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10.0),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset(
                        'assets/images/si_groups.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('SI Groups'),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10.0),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset(
                        'assets/images/translation.jpg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('Translation'),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10.0),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset(
                        'assets/images/member.jpg',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Member Pages'),
                  ],
                ),
              ),
              Card(
                margin: const EdgeInsets.all(10.0),
                elevation: 5,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(80.0),
                      child: Image.asset(
                        'assets/images/information.png',
                        width: 80,
                        height: 80,
                        fit: BoxFit.fill,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text('Information Sharing'),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                    return Profile();
                  }));
                },
                child: Card(
                  margin: const EdgeInsets.all(10.0),
                  elevation: 5,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(80.0),
                        child: Image.asset(
                          'assets/images/profile_images.png',
                          width: 80,
                          height: 80,
                          fit: BoxFit.fill,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text('View Profile'),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // SizedBox(
          //   height: 60,
          // ),
          // Container(
          //     margin: const EdgeInsets.symmetric(horizontal: 20),
          //     width: MediaQuery.of(context).size.width,
          //     height: 80,
          //     child: Card(
          //       elevation: 5.0,
          //       child: Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceAround,
          //         children: <Widget>[
          //           ClipRRect(
          //             borderRadius: BorderRadius.circular(40.0),
          //             child: Image.asset(
          //               'assets/images/fb.png',
          //               width: 40,
          //               height: 40,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //           ClipRRect(
          //             borderRadius: BorderRadius.circular(40.0),
          //             child: Image.asset(
          //               'assets/images/whatsapp.png',
          //               width: 40,
          //               height: 40,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //           ClipRRect(
          //             borderRadius: BorderRadius.circular(40.0),
          //             child: Image.asset(
          //               'assets/images/twitter.jpg',
          //               width: 40,
          //               height: 40,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //           ClipRRect(
          //             borderRadius: BorderRadius.circular(40.0),
          //             child: Image.asset(
          //               'assets/images/instagram.png',
          //               width: 60,
          //               height: 40,
          //               fit: BoxFit.fill,
          //             ),
          //           ),
          //         ],
          //       ),
          //     ))
        ],
      ),
    );
  }
}
