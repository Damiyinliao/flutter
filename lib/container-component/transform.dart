import 'package:flutter/material.dart';
import 'dart:math' as math;

class TransFormPage extends StatelessWidget {
  const TransFormPage({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecoratedBox Button"),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 50.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 50.0,
          children: [
            // 变换
            Container(
              color: Colors.black,
              child: Transform(
                alignment: Alignment.topRight, //相对于坐标系原点的对齐方式
                transform: Matrix4.skewY(0.3), //沿Y轴倾斜0.3弧度
                child: Container(
                  padding: const EdgeInsets.all(8.0),
                  color: Colors.deepOrange,
                  child: const Text('Apartment for rent!'),
                ),
              ),
            ),
            // 旋转
            DecoratedBox(
              decoration: const BoxDecoration(color: Colors.red),
              child: Transform.rotate(
                angle: math.pi / 2,
                child: const Text("Hello world"),
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(color: Colors.red),
              //默认原点为左上角，左移20像素，向上平移5像素
              child: Transform.translate(
                offset: const Offset(-20.0, -5.0),
                child: const Text("Hello world"),
              ),
            ),
            DecoratedBox(
              decoration: const BoxDecoration(color: Colors.red),
              child: Transform.scale(
                scale: 1.5, //放大到1.5倍
                child: const Text("Hello world"),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: const BoxDecoration(color: Colors.red),
                  child: Transform.scale(
                    scale: 1.5,
                    child: const Text("Hello world"),
                  ),
                ),
                const Text(
                  "你好",
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                ),
              ],
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                DecoratedBox(
                  decoration: BoxDecoration(color: Colors.red),
                  //将Transform.rotate换成RotatedBox
                  child: RotatedBox(
                    quarterTurns: 1, //旋转90度(1/4圈)
                    child: Text("Hello world"),
                  ),
                ),
                Text(
                  "你好",
                  style: TextStyle(color: Colors.green, fontSize: 18.0),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
