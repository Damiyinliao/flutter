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
      home: const MyHomePage(title: 'Flutter Text Component'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}) : super();
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // _MyHomePageState({super.key}) : super();

  void _tapRecognizer() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Text(
            "Hello world",
            textAlign: TextAlign.left,
          ),
          // Text(
          //   "Hello world! I'm Jack. Hello world! I'm Jack.Hello world! I'm Jack.Hello world! I'm Jack.",
          //   maxLines: 1,
          //   overflow: TextOverflow.ellipsis,
          // ),
          const Text(
            "Hello world",
            textScaleFactor: 1.5,
          ),
          Text(
            "Hello world",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 18.0,
              height: 1.2,
              fontFamily: "Courier",
              background: Paint()..color = Colors.yellow,
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.dashed,
            ),
          ),
          const Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "Home: "),
                TextSpan(
                  text: "https://flutterchina.club",
                  style: TextStyle(color: Colors.blue),
                  // recognizer: _tapRecognizer,
                ),
              ],
            ),
          ),
          const DefaultTextStyle(
            //1.设置文本默认样式
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
            ),
            textAlign: TextAlign.start,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
                Text(
                  "I am Jack",
                  style: TextStyle(
                    inherit: false, //2.不继承默认样式
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
