import 'dart:convert';
import 'package:flutter/material.dart';
import 'file:///E:/DEMO/Flutter/Flutter-App/lib/vnoc/ui/home/AtcVNOC.dart';
import 'package:flutter_app/vnoc/animations/FadeAnimation.dart';
import 'package:flutter_app/vnoc/ui/Dashboard.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

class Login extends StatefulWidget {
  final bool isLoading = false;

  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  // final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  // final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _isLoading = false;

  var _accountId = "";
  var _userName = '';
  var _userPassword = '';

  // void showInSnackBar(String value) {
  //   _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(value)));
  // }

  void _trySubmit() {
    FocusScope.of(context).unfocus(); // hide key board
  }

  signIn(String email, pass) async {
    print("email = " + email + " pwd = " + pass);
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    Map<String, String> data = {
      "userDeviceID": "a06227689bcb3fae",
      "userID": "$email",
      "password": "$pass",
      "token": "NA",
      "accountID": "NA",
      "accountName": "NA",
      "osType": "0",
      "userType": "",
      "UsersApkVersion": "7",
      "Device": "Android"
    };

    //http://182.76.82.106/ATCVNOCMobileApi/AuthenticateUser
    String loginURL = 'https://vnoc.atctower.in/VNOCMobileApi/AuthenticateUser';

    //String loginURL = 'http://182.76.82.106/ATCVNOCMobileApi/AuthenticateUser';
    String jsonBody = json.encode(data);
    print("json body = " + jsonBody);

    http.Response response = await http.post(loginURL, body: jsonBody);
    print("post response= " + response.body.toString());
    //var jsonResponse = jsonDecode(response.body.toString());

    if (response.statusCode == 200) {
      if (response != null) {
        setState(() {
          _isLoading = false;
        });
        Map<String, dynamic> map = json.decode(response.body);
        String status = map["response"]["status"];
        //print("map= " + status);
        String message = map["response"]["message"];

        Map<String, dynamic> responseDetail = map['responseDetail'];
        String userDeviceID = responseDetail["userDeviceID"];
        String userID = responseDetail["userID"];
        print("responseDetail = " + userID);
        String password = responseDetail["password"];
        String token = responseDetail["token"];
        String accountID = responseDetail["accountID"];
        String accountName = responseDetail["accountName"];
        String userType = responseDetail["userType"];
        int UsersApkVersion = responseDetail["UsersApkVersion"];
        sharedPreferences.setString("token", token);
        Navigator.of(context).push(
            MaterialPageRoute(builder: (BuildContext context) {
          return Dashboard();
        }));
      }
    } else {
      setState(() {
        _isLoading = false;
      });
      print("response fail= " + response.body);
    }
    print("response = " + response.body);
  }

  final TextEditingController accountIdController = new TextEditingController();
  final TextEditingController userNameController = new TextEditingController();
  final TextEditingController passwordController = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/background.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 200,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png'))),
                            )),
                      ),
                      Positioned(
                        left: 140,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 50),
                              child: Center(
                                child: Text(
                                  "Login",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Column(
                    children: <Widget>[
                      FadeAnimation(
                          1.8,
                          Container(
                            padding: EdgeInsets.all(5),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      color: Color.fromRGBO(143, 148, 251, .2),
                                      blurRadius: 20.0,
                                      offset: Offset(0, 10))
                                ]),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  decoration: BoxDecoration(
                                      border: Border(
                                          bottom: BorderSide(
                                              color: Colors.grey[100]))),
                                  child: TextFormField(
                                    controller: accountIdController,
                                    style: TextStyle(color: Colors.grey[400]),
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.sim_card,
                                          color: Colors.grey[400]),
                                      hintText: "Account Id",
                                      border: InputBorder.none,
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: userNameController,
                                    style: TextStyle(color: Colors.grey[400]),
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.account_box,
                                          color: Colors.grey[400]),
                                      hintText: "User Name",
                                      border: InputBorder.none,
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    controller: passwordController,
                                    style: TextStyle(color: Colors.grey[400]),
                                    decoration: InputDecoration(
                                      icon: Icon(Icons.keyboard_hide,
                                          color: Colors.grey[400]),
                                      hintText: "Password",
                                      border: UnderlineInputBorder(
                                          borderSide: BorderSide(
                                              color: Colors.grey[400])),
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400]),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      if (widget.isLoading) CircularProgressIndicator(),
                      if (!widget.isLoading)
                        RaisedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.grey[600],
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            setState(() {
                              _isLoading = true;
                            });
                            signIn(userNameController.text,
                                passwordController.text);
                          },
                        ),
                      SizedBox(
                        height: 70,
                      ),
                      FadeAnimation(
                          1.5,
                          Text(
                            "Forgot Password?",
                            style: TextStyle(
                                color: Color.fromRGBO(143, 148, 251, 1)),
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
