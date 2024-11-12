import 'package:flutter/material.dart';

/// 跳转新路由
///
void main() {
  // debugPaintSizeEnabled = true; // 开启尺寸调试模式
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      routes: {
        "first_page": (context) => const NewRoute(),
        "second_page": (context) => const EchoRoute(),
        // "/": (context) => const MyHomePage(title: 'Flutter Demo Home Page')
      },
      home: const MyHomePage(title: 'MyFlutterDemo'),
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
  int count = 0;
  void _incrementCounter() {
    setState(() {
      count++;
    });
  }

  @override
  Widget build(BuildContext content) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('You have pushed the button this many times'),
            Text(
              '$count',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            TextButton(
              child: const Text('open new route'),
              onPressed: () {
                // 采用路由名跳转
                // Navigator.pushNamed(context, "first_page");
                Navigator.of(context).pushNamed("second_page", arguments: "hi");
              },
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}

// first_page
class NewRoute extends StatelessWidget {
  const NewRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("New route")),
      body: const Center(child: Text("This is new route")),
    );
  }
}

// second_page
class EchoRoute extends StatelessWidget {
  const EchoRoute({super.key});

  @override
  Widget build(BuildContext context) {
    // 获取路由参数
    var args = ModalRoute.of(context)?.settings.arguments;
    print(args);
    return Scaffold(
      appBar: AppBar(title: const Text("Second route")),
      body: const Center(child: Text("Second route")),
    );
  }
}
