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

class _WrapPageState extends State<WrapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wrap Layout"),
      ),
      body: const Wrap(
        spacing: 8.0,
        runSpacing: 8.0,
        alignment: WrapAlignment.center,
        children: [
          Chip(
            avatar:
                CircleAvatar(backgroundColor: Colors.blue, child: Text('A')),
            label: Text('Hamilton'),
          ),
          Chip(
            avatar:
                CircleAvatar(backgroundColor: Colors.blue, child: Text('M')),
            label: Text('Lafayette'),
          ),
          Chip(
            avatar:
                CircleAvatar(backgroundColor: Colors.blue, child: Text('H')),
            label: Text('Mulligan'),
          ),
          Chip(
            avatar:
                CircleAvatar(backgroundColor: Colors.blue, child: Text('J')),
            label: Text('Laurens'),
          ),
        ],
      ),
    );
  }
}
