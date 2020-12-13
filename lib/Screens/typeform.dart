import 'package:flutter/material.dart';
import 'package:flutter_inappbrowser/flutter_inappbrowser.dart';

class Typeform extends StatefulWidget {
  @override
  _TypeformState createState() => _TypeformState();
}

class _TypeformState extends State<Typeform> {
  InAppWebViewController webView;
  String url = "";
  double progress = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: <Widget>[
              (progress != 1.0)
                  ? LinearProgressIndicator(value: progress)
                  : null,
              Expanded(
                child: Container(
                  decoration:
                      BoxDecoration(border: Border.all(color: Colors.green)),
                  child: InAppWebView(
                    initialUrl: "http://8d3e6a0c.ngrok.io/",
                    initialHeaders: {},
                    initialOptions: {},
                    onWebViewCreated: (InAppWebViewController controller) {
                      webView = controller;
                    },
                    onLoadStart:
                        (InAppWebViewController controller, String url) {
                      print("started $url");
                      setState(() {
                        this.url = url;
                      });
                    },
                    onProgressChanged:
                        (InAppWebViewController controller, int progress) {
                      setState(() {
                        this.progress = progress / 100;
                      });
                    },
                  ),
                ),
              ),
            ].where((Object o) => o != null).toList(),
          ),
        ),
      ),
    );
  }
}
