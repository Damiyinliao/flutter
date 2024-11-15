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
        title: const Text("LinearLayout-Row"),
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
      body: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 10.0,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Text(" hello world "),
              Text(" I am Jack "),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            textDirection: TextDirection.rtl,
            children: <Widget>[
              Expanded(child: Text("hello world")),
              Expanded(child: Text("I am Jack")),
            ],
          ),
          // Expanded(
          //   // 使用 Expanded 来使 Row 占满整个宽度
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.start,
          //     textDirection: TextDirection.rtl, // 从右到左排列文本
          //     children: <Widget>[
          //       Text("hello world"),
          //       Text("I am Jack"),
          //     ],
          //   ),
          // ),
          SizedBox(
            width: double.infinity, // 让 Row 占满宽度
            height: 50, // 给 Row 设置一个固定的高度
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              textDirection: TextDirection.rtl, // 从右到左排列文本
              children: <Widget>[
                Text("hello world"),
                Text("I am Jack"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
