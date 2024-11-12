import 'package:flutter/material.dart';

/// 1️⃣跳转新路由
/// 2️⃣路由传参
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
      // 不改变源代码的情况下给tiproute页面进行路由注册
      routes: {
        "tip2": (context) {
          return TipRoute(
              text: ModalRoute.of(context)!.settings.arguments as String);
        }
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
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    // 打开新路由
                    // return const NewRoute();
                    // 路由传参测试页面一
                    return const RouterTestRoute();
                  },
                ));
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

/// 打开新路由
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

// 测试页面一
class RouterTestRoute extends StatelessWidget {
  const RouterTestRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () async {
          // 打开`TipRoute`，并等待返回结果
          // result 就是返回来的结果值
          var result = await Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                // 打开新路由将参数传递过去
                return const TipRoute(text: "我是提示哈哈哈哈");
              },
            ),
          );
          // ignore: avoid_print
          print("路由返回值：$result");
        },
        child: const Text("打开提示页"),
      ),
    );
  }
}

/// 新路由接受参数
class TipRoute extends StatelessWidget {
  const TipRoute({super.key, required this.text}) : super();
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("提示"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Column(
            children: [
              // 接受传递过来的参数
              Text(text),
              ElevatedButton(
                // 返回的时候将返回值传递过去
                onPressed: () => Navigator.pop(context, "我是返回值"),
                child: const Text('返回'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
