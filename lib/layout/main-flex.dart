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
      home: const FlexLayoutPage(title: 'Flutter Input Component'),
    );
  }
}

class FlexLayoutPage extends StatefulWidget {
  const FlexLayoutPage({super.key, required this.title}) : super();
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _FlexLayoutState createState() => _FlexLayoutState();
}

class _FlexLayoutState extends State<FlexLayoutPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.0,
      children: [
        Flex(
          direction: Axis.horizontal,
          children: [
            Expanded(
              flex: 1,
              child: Container(
                height: 30.0,
                color: Colors.red,
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                height: 30.0,
                color: Colors.yellow,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 0),
          child: SizedBox(
            height: 100.0,
            child: Flex(
              direction: Axis.vertical,
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 30.0,
                    color: Colors.red,
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                Expanded(
                  flex: 1,
                  child: Container(
                    height: 30.0,
                    color: Colors.green,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
