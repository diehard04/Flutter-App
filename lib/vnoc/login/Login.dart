import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/animations/FadeAnimation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  Login({this.submitForm, isLoading});

  final bool isLoading = false;

  final void Function(String accountId, String userName, String password, BuildContext ctx) submitForm;

  LoginState createState() => LoginState();
}

class LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  var _accountId = "";
  var _userName = '';
  var _userPassword = '';

  void _trySubmit() {
    final isValid = _formKey.currentState.validate();
    FocusScope.of(context).unfocus(); // hide key board

    // if (_userImageFile != null && !_isLogin) {
    //   Scaffold.of(context).showSnackBar(
    //       SnackBar(content: Text('Please pick an image'),
    //         backgroundColor: Theme.of(context).errorColor,
    //       )
    //   );
    //   return;
    // }
    if (isValid) {
      _formKey.currentState.save();
      print(_accountId);
      print(_userName);
      print(_userPassword);
      // use those value to auth request ...
      widget.submitForm(_accountId.trim(), _userName.trim(),
          _userPassword.trim(), context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            key: _formKey,
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
                                    key: ValueKey('accountId'),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Account ID",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                    validator: (val) => val.length < 1
                                        ? 'Account Id required'
                                        : null,
                                    onSaved: (val) => _accountId = val,
                                    obscureText: false,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    key: ValueKey('username'),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "User Name",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                    validator: (val) => val.length < 1
                                        ? 'User Name Required'
                                        : null,
                                    onSaved: (val) => _userName = val,
                                    obscureText: false,
                                    keyboardType: TextInputType.text,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    key: ValueKey('password'),
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                    validator: (val) => val.length < 1
                                        ? 'Password Required'
                                        : null,
                                    onSaved: (val) => _userPassword = val,
                                    obscureText: true,
                                    keyboardType: TextInputType.text,
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
                        ElevatedButton(
                          child: Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          onPressed: _trySubmit,
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
