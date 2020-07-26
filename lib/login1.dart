import 'package:flutter/material.dart';
import 'package:smart_women/login2.dart';
import 'package:smart_women/signup.dart';

class Login1 extends StatefulWidget {
  @override
  _Login1State createState() => _Login1State();
}

class _Login1State extends State<Login1> {
  String signupType = "Nestle Independent Distributor";
  List<String> signUpList = [
    "General",
    "Nestle Independent Distributor",
    "Admin",
    "Smart Women Ambassador"
  ];
  @override
  Widget build(BuildContext context) {
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
              return SignUp();
            }));
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(
              'Do you want to log in as :-',
              style: TextStyle(
                  fontSize: 20, color: Theme.of(context).primaryColor),
            ),
            SizedBox(
              width: 10,
            ),
            DropdownButton<String>(
              value: signupType,
              iconSize: 25,
              items: signUpList.map((String value) {
                return new DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: 16),
                  ),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  signupType = value;
                });
              },
            ),
            SizedBox(
              height: 10,
            ),
            RaisedButton(
              color: Theme.of(context).primaryColor,
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (_) {
                  return Login2(
                    loginType: signupType,
                  );
                }));
              },
              child: Text(
                'Continue',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}
