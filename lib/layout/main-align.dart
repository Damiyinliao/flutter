import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WrapPage(),
    );
  }
}

class WrapPage extends StatefulWidget {
  const WrapPage({super.key}) : super();

  @override
  // ignore: library_private_types_in_public_api
  _WrapPageState createState() => _WrapPageState();
}

class TestFlowDelegate extends FlowDelegate {
  EdgeInsets margin;

  TestFlowDelegate({this.margin = EdgeInsets.zero});

  double width = 0;
  double height = 0;

  @override
  void paintChildren(FlowPaintingContext context) {
    var x = margin.left;
    var y = margin.top;
    //计算每一个子widget的位置
    for (int i = 0; i < context.childCount; i++) {
      var w = context.getChildSize(i)!.width + x + margin.right;
      if (w < context.size.width) {
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x = w + margin.left;
      } else {
        x = margin.left;
        y += context.getChildSize(i)!.height + margin.top + margin.bottom;
        //绘制子widget(有优化)
        context.paintChild(i, transform: Matrix4.translationValues(x, y, 0.0));
        x += context.getChildSize(i)!.width + margin.left + margin.right;
      }
    }
  }

  @override
  Size getSize(BoxConstraints constraints) {
    // 指定Flow的大小，简单起见我们让宽度尽可能大，但高度指定为200，
    // 实际开发中我们需要根据子元素所占用的具体宽高来设置Flow大小
    return const Size(double.infinity, 200.0);
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) {
    return oldDelegate != this;
  }
}

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Layout"),
      ),
      body: Column(
        spacing: 10.0,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            // height: 120.0,
            // width: 120.0,
            color: Colors.blue.shade50,
            child: const Align(
              widthFactor: 2,
              heightFactor: 2,
              alignment: Alignment(1,
                  -1), // x左边到右边为-1~1；y顶部到底部为-1~1 Alignment(1, -1)===Alignment.topRight
              child: FlutterLogo(
                size: 60,
              ),
            ),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              child: Text("xxx"),
            ),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(color: Colors.red),
            child: Center(
              widthFactor: 1,
              heightFactor: 1,
              child: Text("xxx"),
            ),
          )
        ],
      ),
    );
  }
}
