import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MobileRegistration extends StatefulWidget {
  static String id = 'register';
  MobileRegistration({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MobileRegistrationState createState() => _MobileRegistrationState();
}

class _MobileRegistrationState extends State<MobileRegistration> {
  String name;
  String phoneNo;
  String smsOTP;
  String verificationId;
  String errorMessage = '';
  FirebaseAuth _auth = FirebaseAuth.instance;
  Firestore _firestore = Firestore.instance;
  @override
  void initState() {
    super.initState();
  }

  Future<void> verifyPhone() async {
    final PhoneCodeSent smsOTPSent = (String verId, [int forceCodeResend]) {
      this.verificationId = verId;
      smsOTPDialog(context).then((value) {
        print('sign in');
      });
    };

    try {
      await _auth.verifyPhoneNumber(
          phoneNumber: this.phoneNo, // PHONE NUMBER TO SEND OTP
          codeAutoRetrievalTimeout: (String verId) {
            //Starts the phone number verification process for the given phone number.
            //Either sends an SMS with a 6 digit code to the phone number specified, or sign's the user in and [verificationCompleted] is called.
            this.verificationId = verId;
          },
          codeSent:
              smsOTPSent, // WHEN CODE SENT THEN WE OPEN DIALOG TO ENTER OTP.
          timeout: const Duration(seconds: 20),
          verificationCompleted: (AuthCredential phoneAuthCredential) {
            print(phoneAuthCredential);
          },
          verificationFailed: (AuthException exception) {
            print('${exception.message}');
          });
    } catch (e) {
      handleError(e);
    }
  }

  Future<bool> smsOTPDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: Text('Enter SMS Code'),
            content: Container(
              height: 85,
              child: Column(children: [
                TextField(
                  onChanged: (value) {
                    this.smsOTP = value;
                  },
                ),
                (errorMessage != ''
                    ? Text(
                        errorMessage,
                        style: TextStyle(color: Colors.red),
                      )
                    : Container())
              ]),
            ),
            contentPadding: EdgeInsets.all(10),
            actions: <Widget>[
              FlatButton(
                child: Text('Done'),
                onPressed: () {
                  _auth.currentUser().then((user) async {
                    if (user != null) {
                      final AuthCredential credential =
                          PhoneAuthProvider.getCredential(
                        verificationId: verificationId,
                        smsCode: smsOTP,
                      );
                      final FirebaseUser currentUser =
                          await _auth.currentUser();
                      currentUser.linkWithCredential(credential);

                      print(currentUser.phoneNumber);
                      print(currentUser.email);
                      print(currentUser.uid);
                      _firestore.collection('user').add({
                        'mobile': currentUser.phoneNumber,
                        'email': currentUser.email,
                        'name': name,
                      });

                      Navigator.of(context).pop();
                      Navigator.of(context).pushReplacementNamed('/addVehicle');
                    } else {
                      signIn();
                    }
                  });
                },
              )
            ],
          );
        });
  }

  signIn() async {
    try {
      final AuthCredential credential = PhoneAuthProvider.getCredential(
        verificationId: verificationId,
        smsCode: smsOTP,
      );
      final FirebaseUser currentUser = await _auth.currentUser();
      currentUser.linkWithCredential(credential);

      print(currentUser.phoneNumber);
      print(currentUser.email);
      print(currentUser.uid);
      _firestore.collection('user').add({
        'email': currentUser.email,
        'name': name,
      });

      Navigator.of(context).pushReplacementNamed('/addVehicle');
    } catch (e) {
      handleError(e);
    }
  }

  handleError(error) {
    print(error);
    switch (error.code) {
      case 'ERROR_INVALID_VERIFICATION_CODE':
        FocusScope.of(context).requestFocus(new FocusNode());
        setState(() {
          errorMessage = 'Invalid Code';
        });
        Navigator.of(context).pop();
        smsOTPDialog(context).then((value) {
          print('sign in');
        });
        break;
      default:
        setState(() {
          errorMessage = 'Enter Valid Phone Number';
        });

        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Center(child: Text(widget.title)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  hintText: 'Enter your name',
                  hoverColor: Colors.lightGreen,
                ),
                onChanged: (value) {
                  this.name = value;
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                children: <Widget>[
                  Expanded(
                      flex: 2,
                      child: Text(
                        '+91- ',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      )),
                  Expanded(
                    flex: 10,
                    child: TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        hintText: 'Enter Phone Number',
                        hoverColor: Colors.lightGreen,
                      ),
                      onChanged: (value) {
                        this.phoneNo = '+1$value';
                      },
                    ),
                  ),
                ],
              ),
            ),
            (errorMessage != ''
                ? Text(
                    errorMessage,
                    style: TextStyle(color: Colors.red),
                  )
                : Container()),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Material(
                color: Colors.lightGreen,
                borderRadius: BorderRadius.all(Radius.circular(30.0)),
                elevation: 5.0,
                child: MaterialButton(
                    child: Text(
                      'Verify',
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      verifyPhone();
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
