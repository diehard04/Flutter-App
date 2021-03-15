import 'package:flutter/material.dart';
import 'package:flutter_app/vnoc/animations/FadeAnimation.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {

  Login({this.accountId, this.userName,this.password});
  final String accountId;
  final String userName;
  final String password;

  LoginState createState() => LoginState();

}

class LoginState extends State<Login> {
  String _status = 'no-action';
  String _accountId, _userName, _password;

  final formKey = GlobalKey<FormState>();
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _controllerAccountId,_controllerUsername, _controllerPassword;

  @override
  void initState() {
    _controllerAccountId = TextEditingController(text: widget?.accountId?? "");
    _controllerUsername = TextEditingController(text: widget?.userName?? "");
    _controllerPassword = TextEditingController();
    _loadUserName();
    super.initState();
  }

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
                                    decoration: InputDecoration(border: InputBorder.none, hintText: "Account ID",
                                        hintStyle: TextStyle(color: Colors.grey[400])),
                                    validator: (val) => val.length < 1 ? 'Account Id required' : null,
                                    onSaved: (val) => _accountId = val,
                                    obscureText: false,
                                    keyboardType: TextInputType.text,
                                    controller: _controllerAccountId,
                                    autocorrect: false,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(border: InputBorder.none, hintText: "User Name",
                                        hintStyle: TextStyle(color: Colors.grey[400])),
                                    validator: (val) =>
                                    val.length < 1 ? 'User Name Required' : null,
                                    onSaved: (val) => _userName = val,
                                    obscureText: true,
                                    controller: _controllerUsername,
                                    keyboardType: TextInputType.text,
                                    autocorrect: false,
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.all(8.0),
                                  child: TextFormField(
                                    decoration: InputDecoration(
                                        border: InputBorder.none,
                                        hintText: "Password",
                                        hintStyle:
                                            TextStyle(color: Colors.grey[400])),
                                    validator: (val) =>
                                    val.length < 1 ? 'Password Required' : null,
                                    onSaved: (val) => _password = val,
                                    obscureText: true,
                                    controller: _controllerPassword,
                                    keyboardType: TextInputType.text,
                                    autocorrect: false,
                                  ),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        height: 30,
                      ),
                      FadeAnimation(
                          2,
                          Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Color.fromRGBO(143, 148, 251, 1),
                                  Color.fromRGBO(143, 148, 251, .6),
                                ])),
                            child: Center(
                              child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                              ),
                            ),
                          )),
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


  void _loadUserName() async{
    try {
      SharedPreferences _pref = await SharedPreferences.getInstance();
      var _username = _pref.getString("saved_username")?? "";
      var _rememberme = _pref.getString("remember_me") ?? false;

      if (_rememberme) {
        _controllerUsername.text = _username ?? "";
      }
    } catch (e){
      print(e);
    }
  }

}
