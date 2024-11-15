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
  void _onPressed() {}

  @override
  Widget build(BuildContext context) {
    // return Scaffold(
    //   appBar: AppBar(
    //     title: Text(widget.title),
    //   ),
    //   body: Column(
    //     mainAxisAlignment: MainAxisAlignment.start,
    //     children: [
    //       // Image(image: AssetImage("images/avatar.webp"), width: 100.0),
    //       Image.network(
    //         "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
    //         width: 100.0,
    //       ),
    //       Image.network(
    //         "https://whwebasset.oss-cn-hangzhou.aliyuncs.com/island-miniprogram/new-home-banner.png",
    //         width: 100.0,
    //         errorBuilder:
    //             (BuildContext context, Object error, StackTrace? stackTrace) {
    //           return const Text('图片加载失败');
    //         },
    //       ),
    //     ],
    //   ),
    // );
    //

    var img = const AssetImage("images/avatar.webp");
    return SingleChildScrollView(
      child: Column(
          children: <Image>[
        Image(
          image: img,
          height: 50.0,
          width: 100.0,
          fit: BoxFit.fill,
        ),
        Image(
          image: img,
          height: 50,
          width: 50.0,
          fit: BoxFit.contain,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.cover,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.fitWidth,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.fitHeight,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 50.0,
          fit: BoxFit.scaleDown,
        ),
        Image(
          image: img,
          height: 50.0,
          width: 100.0,
          fit: BoxFit.none,
        ),
        Image(
          image: img,
          width: 100.0,
          color: Colors.blue,
          colorBlendMode: BlendMode.difference,
          fit: BoxFit.fill,
        ),
        Image(
          image: img,
          width: 100.0,
          height: 200.0,
          repeat: ImageRepeat.repeatY,
        )
      ].map((e) {
        return Row(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SizedBox(
                width: 100,
                child: e,
              ),
            ),
            Text(e.fit.toString())
          ],
        );
      }).toList()),
    );
  }
}
