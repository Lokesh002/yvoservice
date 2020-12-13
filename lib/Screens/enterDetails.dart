import 'package:flutter/material.dart';

class EnterDetails extends StatefulWidget {
  final String phone;
  EnterDetails(this.phone);
  @override
  _EnterDetailsState createState() => _EnterDetailsState();
}

class _EnterDetailsState extends State<EnterDetails> {
  String phoneNo = '0000';
  @override
  Widget build(BuildContext context) {
    phoneNo = widget.phone;
    return Container(
      child: Center(
        child: Text("$phoneNo"),
      ),
    );
  }
}
