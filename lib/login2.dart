import 'package:flutter/material.dart';
import 'package:smart_women/dashboard.dart';
import 'package:smart_women/login1.dart';
import 'package:smart_women/profile.dart';

class Login2 extends StatefulWidget {
  final String loginType;
  Login2({this.loginType});
  @override
  _Login2State createState() => _Login2State();
}

class _Login2State extends State<Login2> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context)
                .pushReplacement(MaterialPageRoute(builder: (_) {
              return Login1();
            }));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text(
                "Login as ${widget.loginType}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              SizedBox(
                height: 10,
              ),
              Card(
                elevation: 5,
                child: Padding(
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10, top: 20, bottom: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Email ID',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: "abc@xyz.com",
                              contentPadding: const EdgeInsets.only(left: 5),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Password',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                              hintText: "*******",
                              contentPadding: const EdgeInsets.only(left: 5),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        margin: const EdgeInsets.only(top: 15),
                        height: 50,
                        width: width * 0.9,
                        child: RaisedButton(
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (_) {
                              return Dashboard();
                            }));
                          },
                          color: Theme.of(context).primaryColor,
                          child: Text(
                            'Login',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
