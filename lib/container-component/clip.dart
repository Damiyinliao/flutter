import 'package:flutter/material.dart';

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) => const Rect.fromLTWH(10.0, 15.0, 40.0, 30.0);

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) => false;
}

class ClipPage extends StatelessWidget {
  const ClipPage({super.key}) : super();
  @override
  Widget build(BuildContext context) {
    Widget avatar = Image.asset(
      "images/avatar.webp",
      width: 60,
    );
    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipPage"),
      ),
      body: Column(
        spacing: 20.0,
        children: [
          avatar,
          ClipOval(child: avatar), //剪裁为圆形
          ClipRRect(
            //剪裁为圆角矩形
            borderRadius: BorderRadius.circular(5.0),
            child: avatar,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                widthFactor: .5, //宽度设为原来宽度一半，另一半会溢出
                child: avatar,
              ),
              const Text(
                "你好世界",
                style: TextStyle(color: Colors.green),
              )
            ],
          ),
          Row(
            children: [
              ClipRect(
                //将溢出部分剪裁
                child: Align(
                  alignment: Alignment.topLeft,
                  widthFactor: .5, //宽度设为原来宽度一半
                  child: avatar,
                ),
              ),
              const Text(
                "你好世界",
                style: TextStyle(color: Colors.green),
              ),
            ],
          ),
          DecoratedBox(
            decoration: const BoxDecoration(color: Colors.red),
            child: ClipRect(
                clipper: MyClipper(), //使用自定义的clipper
                child: avatar),
          )
        ],
      ),
    );
  }
}
