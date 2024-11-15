import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const MyConstrainedBoxPage(title: 'Flutter Input Component'),
    );
  }
}

class MyConstrainedBoxPage extends StatefulWidget {
  const MyConstrainedBoxPage({super.key, required this.title}) : super();
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _ConstrainedBoxState createState() => _ConstrainedBoxState();
}

class _ConstrainedBoxState extends State<MyConstrainedBoxPage> {
  @override
  Widget build(BuildContext context) {
    Widget redBox = const DecoratedBox(
      decoration: BoxDecoration(color: Colors.red),
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("ConstrainedBox"),
        actions: const <Widget>[
          SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              strokeWidth: 3,
              valueColor: AlwaysStoppedAnimation(Colors.white70),
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
      body: ConstrainedBox(
        constraints: const BoxConstraints(
          maxWidth: double.infinity, //宽度尽可能大
          maxHeight: 100.0, //最大高度为50像素
        ),
        child: SizedBox(
          height: 50.0,
          width: 50.0,
          child: redBox,
        ),
      ),
    );
  }
}
