import 'package:flutter/material.dart';

/// Widget管理自身状态

void main() {
  // debugPaintSizeEnabled = true; // 开启尺寸调试模式
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      // 包裹在 MaterialApp 中
      home: const TapboxA(),
    );
  }
}

class TapboxA extends StatefulWidget {
  const TapboxA({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _TapboxAState createState() => _TapboxAState();
}

class _TapboxAState extends State<TapboxA> {
  bool _active = false;
  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap,
      child: Container(
        width: 200.0,
        height: 200.0,
        decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600]),
        child: Center(
          child: Text(
            _active ? 'Active' : 'Inactive',
            style: const TextStyle(fontSize: 32.0, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
