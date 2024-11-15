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

// 图标接口
class MyIcons {
  // book 图标
  static const IconData book =
      IconData(0xe614, fontFamily: 'myIcon', matchTextDirection: true);
  // 微信图标
  static const IconData wechat =
      IconData(0xec7d, fontFamily: 'myIcon', matchTextDirection: true);
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    String icons = "";
    // accessible: 0xe03e
    icons += "\uE03e";
    // error:  0xe237
    icons += " \uE237";
    // fingerprint: 0xe287
    icons += " \uE287";

    return const SingleChildScrollView(
      child:
          // Column(
          //   children: [
          //     Text(
          //       icons,
          //       style: const TextStyle(
          //         fontFamily: "MaterialIcons",
          //         fontSize: 24.0,
          //         color: Colors.green,
          //       ),
          //     ),
          //   ],
          // ),
          Row(
        mainAxisAlignment: MainAxisAlignment.center,
        // children: <Widget>[
        //   Icon(Icons.accessible, color: Colors.green),
        //   Icon(Icons.error, color: Colors.green),
        //   Icon(Icons.fingerprint, color: Colors.green),
        // ],
        children: <Widget>[
          Icon(MyIcons.book, color: Colors.purple),
          Icon(MyIcons.wechat, color: Colors.green),
        ],
      ),
    );
  }
}
