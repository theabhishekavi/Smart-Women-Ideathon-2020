import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:smart_women/login1.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  String signupType = "Nestle Independent Distributor";
  List<String> signUpList = [
    "General",
    "Nestle Independent Distributor",
    "Admin",
    "Smart Women Ambassador"
  ];
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.only(top: 60, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Create Account,',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Sign up to get started!',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 20,
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
                        'Full Name',
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
                              hintText: "Smart Women",
                              contentPadding: const EdgeInsets.only(left: 5),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
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
                      Text(
                        'Re-Password',
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
                      Text(
                        'Phone Number',
                        style: TextStyle(fontSize: 16),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey)),
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              hintText: "+62 21 6539-0605",
                              contentPadding: const EdgeInsets.only(left: 5),
                              hintStyle: TextStyle(color: Colors.grey),
                              border: InputBorder.none),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      // Row(
                      //   mainAxisAlignment: MainAxisAlignment.center,
                      //   children: <Widget>[
                      //     Text(
                      //       'Sign up as:',
                      //       style: TextStyle(fontSize: 16),
                      //     ),
                      //     SizedBox(
                      //       width: 10,
                      //     ),
                      //     DropdownButton<String>(
                      //       value: signupType,
                      //       iconSize: 25,
                      //       items: signUpList.map((String value) {
                      //         return new DropdownMenuItem<String>(
                      //           value: value,
                      //           child: Text(
                      //             value,
                      //             style: TextStyle(fontSize: 14),
                      //           ),
                      //         );
                      //       }).toList(),
                      //       onChanged: (value) {
                      //         setState(() {
                      //           signupType = value;
                      //         });
                      //       },
                      //     ),
                      //   ],
                      // )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  margin: const EdgeInsets.only(top: 15),
                  height: 50,
                  width: width * 0.9,
                  child: RaisedButton(
                    onPressed: () {
                      Fluttertoast.showToast(msg: 'Sign up successfully');
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return Login1();
                      }));
                    },
                    color: Theme.of(context).primaryColor,
                    child: Text(
                      'Sign Up',
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'I\'m already a member ',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return Login1();
                      }));
                    },
                    child: Text(
                      'Sign In!',
                      style: TextStyle(color: Theme.of(context).primaryColor),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
