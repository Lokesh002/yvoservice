import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Authorization {
  String phoneNo;
  String smsCode;
  String verificationId;

  FirebaseAuth _auth = FirebaseAuth.instance;
  FirebaseUser user;

  AuthCredential credential;

  Authorization(String phoneNo) {
    this.phoneNo = phoneNo;
  }

  Future<void> verifyPhone(BuildContext context) async {
    final PhoneCodeAutoRetrievalTimeout autoRetrieve = (String verId) {
      this.verificationId = verId;
    };

    final PhoneCodeSent smsCodeSent = (String verId, [int forceCodeSent]) {
      this.verificationId = verId;
      smsCodeDialog(context);
    };

    final PhoneVerificationCompleted verifiedSuccess =
        (AuthCredential credential) {
      print('verified');
      Navigator.of(context).pushReplacementNamed('/splash');
    };

    final PhoneVerificationFailed verifiedFailed = (AuthException e) {
      print(e);
    };

    await _auth.verifyPhoneNumber(
        phoneNumber: this.phoneNo,
        timeout: const Duration(seconds: 5),
        verificationCompleted: verifiedSuccess,
        verificationFailed: verifiedFailed,
        codeSent: smsCodeSent,
        codeAutoRetrievalTimeout: autoRetrieve);

    this.user = (await _auth.signInWithCredential(credential)).user;
  }

  Future<bool> smsCodeDialog(BuildContext context) {
    return showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext cntxt) {
          return AlertDialog(
            title: Text("enter code: "),
            content: TextField(
              onChanged: (value) {
                this.smsCode = value;
              },
            ),
            contentPadding: EdgeInsets.all(10),
            actions: <Widget>[
              new FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    FirebaseAuth.instance.currentUser().then((user) {
                      if (user != null) {
                        Navigator.of(cntxt).pop();
                        Navigator.of(cntxt).pushReplacementNamed('/splash');
                      } else {
                        Navigator.of(cntxt).pop();
                        signIn(context);
                      }
                    });
                  },
                  child: Text("Done"))
            ],
          );
        });
  }

  signIn(BuildContext context) async {
    final AuthCredential cred = PhoneAuthProvider.getCredential(
        verificationId: verificationId, smsCode: smsCode);
    await FirebaseAuth.instance.signInWithCredential(cred).then((user) {
      Navigator.of(context).pushReplacementNamed('/splash');
    }).catchError((err) => print(err));
  }
}
