import 'package:flutter/material.dart';
import 'homeScreen.dart';
import 'helpScreen.dart';
import 'orders.dart';
import 'profile.dart';
import 'addVehicle.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';
import 'package:modal_progress_hud/modal_progress_hud.dart';

final GoogleSignIn googleSignIn = GoogleSignIn();

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  InAppWebViewController webView;
  String url = "";
  double progress = 0;
  bool showSpinner = false;
  bool _isAuth = false;
  int pageIndex = 2;
  int selectedIconSize = 35;
  PageController pageController;
  login() {
    googleSignIn.signIn();
  }

  logout() {
    googleSignIn.signOut();
  }

  onPageChanged(int pageIndex) {
    setState(() {
      this.pageIndex = pageIndex;
    });
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    pageController = PageController(
      initialPage: pageIndex,
    );
    googleSignIn.onCurrentUserChanged.listen((account) {
      handleSignIn(account);
    }, onError: (err) {
      print(err);
    });
    googleSignIn.signInSilently(suppressErrors: false).then((account) {
      handleSignIn(account);
    }).catchError((err) {
      print(err);
    });
  }

  handleSignIn(account) {
    if (account != null) {
      print(account);
      setState(() {
        _isAuth = true;
      });
    } else {
      setState(() {
        _isAuth = false;
      });
    }
  }

  onTap(int pageIndex) {
    pageController.jumpToPage(
      pageIndex,
    );
  }

  Scaffold buildAuthScreen() {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: SafeArea(
          child: Container(
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.asset(
                        'images/Logo Green.png',
                        height: 200,
                        width: 200,
                      ),
                      Material(
                        color: Color(0xff00A64F),
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () {
                            Navigator.pushNamed(context, '/typeform');
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'Book Service Now',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Material(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(30.0)),
                        elevation: 5.0,
                        child: MaterialButton(
                          onPressed: () async {
                            await logout();
                            Navigator.pushReplacementNamed(context, '/home');
                          },
                          minWidth: 200.0,
                          height: 42.0,
                          child: Text(
                            'Logout',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  buildUnauthScreen() {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            'images/Logo Green.png',
            height: 200,
            width: 200,
          ),
          SizedBox(
            height: 20,
          ),
          GestureDetector(
            child: Container(
              width: 260,
              height: 50,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/googleSignIn.jpg'),
                  fit: BoxFit.scaleDown,
                ),
              ),
            ),
            onTap: () {
              login();
            },
          )
        ],
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return _isAuth ? buildAuthScreen() : buildUnauthScreen();
  }
}
