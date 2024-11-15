import 'package:flutter/material.dart';

class FittedboxPage extends StatelessWidget {
  const FittedboxPage({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    Widget wContainer(BoxFit boxFit) {
      return Container(
        width: 50,
        height: 50,
        color: Colors.red,
        child: FittedBox(
          fit: boxFit,
          // 子容器超过父容器大小
          child: Container(width: 60, height: 70, color: Colors.blue),
        ),
      );
    }

    return Center(
      child: Column(
        children: [
          wContainer(BoxFit.none),
          const Text('Wendux'),
          wContainer(BoxFit.contain),
          const Text('Flutter中国'),
        ],
      ),
    );
  }
}
