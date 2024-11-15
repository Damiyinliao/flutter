import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  debugPaintSizeEnabled = true; // 开启尺寸调试模式
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Text',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const LinearLayoutPage(title: 'Flutter Input Component'),
    );
  }
}

class LinearLayoutPage extends StatefulWidget {
  const LinearLayoutPage({super.key, required this.title}) : super();
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _LinearLayoutState createState() => _LinearLayoutState();
}

class _LinearLayoutState extends State<LinearLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("LinearLayout-Column"),
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
      // 使用 ConstrainedBox 使得Column 的宽度占满屏幕
      // body: ConstrainedBox(
      //   constraints: const BoxConstraints(minWidth: double.infinity),
      //   child: const Column(
      //     mainAxisSize: MainAxisSize.max,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: <Widget>[
      //       Text("hi"),
      //       Text("world"),
      //     ],
      //   ),
      // ),

      //
      body: Container(
        color: Colors.green,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max, //有效，外层Colum高度为整个屏幕
            children: <Widget>[
              Container(
                color: Colors.red,
                child: const Column(
                  mainAxisSize: MainAxisSize.max, //无效，内层Colum高度为实际高度
                  children: <Widget>[
                    Text("hello world "),
                    Text("I am Jack "),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
