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
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ElevatedButton(
            child: const Text("click me"),
            onPressed: () {},
          ),
          TextButton(
            child: const Text("submit"),
            onPressed: () {},
          ),
          OutlinedButton(
            child: const Text("normal"),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.thumb_up),
            onPressed: () {},
          ),
          ElevatedButton.icon(
            icon: const Icon(Icons.send),
            label: const Text("发送"),
            onPressed: _onPressed,
          ),
          OutlinedButton.icon(
            icon: const Icon(Icons.add),
            label: const Text("添加"),
            onPressed: _onPressed,
          ),
          TextButton.icon(
            icon: const Icon(Icons.info),
            label: const Text("详情"),
            onPressed: _onPressed,
          ),
        ],
      ),
    );
  }
}
