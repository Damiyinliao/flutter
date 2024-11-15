import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import './container-component/fittedbox.dart';

void main() {
  debugPaintSizeEnabled = true; // 开启尺寸调试模式
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const FittedboxPage(),
    );
  }
}
