import 'package:flutter/material.dart';

class PaddingTestPage extends StatelessWidget {
  const PaddingTestPage({super.key}) : super();
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 8),
            child: Text("Hello World"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Text("I am Jack"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Text("I am Jack"),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(20, 100, 20, 10),
            child: Text("QC"),
          ),
        ],
      ),
    );
  }
}
