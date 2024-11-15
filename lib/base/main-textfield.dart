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
      home: const MyHomePage(title: 'Flutter Input Component'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title}) : super();
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _InputState createState() => _InputState();
}

class _InputState extends State<MyHomePage> {
  String username = "";
  String password = "";
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  FocusNode focusNode1 = FocusNode();
  FocusNode focusNode2 = FocusNode();
  FocusScopeNode? focusScopeNode;

  @override
  Widget build(BuildContext context) {
    _passwordController.text = "hello world!";
    _passwordController.selection = TextSelection(
      baseOffset: 2,
      extentOffset: _passwordController.text.length,
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        // child: Column(
        //   spacing: 10.0,
        //   children: [
        //     TextField(
        //       autofocus: true,
        //       focusNode: focusNode1,
        //       decoration: const InputDecoration(
        //         labelText: "用户名",
        //         hintText: "用户名或邮箱",
        //         prefixIcon: Icon(Icons.person),
        //         // 未获得焦点下划线设为灰色
        //         enabledBorder: UnderlineInputBorder(
        //           borderSide: BorderSide(color: Colors.grey),
        //         ),
        //         //获得焦点下划线设为蓝色
        //         focusedBorder: UnderlineInputBorder(
        //           borderSide: BorderSide(color: Colors.blue),
        //         ),
        //       ),
        //       onChanged: (value) {
        //         username = value;
        //       },
        //       controller: _unameController,
        //     ),
        //     TextField(
        //       focusNode: focusNode2,
        //       decoration: const InputDecoration(
        //         labelText: "密码",
        //         hintText: "您的登录密码",
        //         prefixIcon: Icon(Icons.lock),
        //       ),
        //       onChanged: (value) => password = value,
        //       controller: _passwordController,
        //     ),
        //     Builder(builder: (ctx) {
        //       return Column(
        //         spacing: 10.0,
        //         children: [
        //           ElevatedButton(
        //             onPressed: onPressed,
        //             child: const Text("submit"),
        //           ),
        //           ElevatedButton(
        //             child: const Text("移动焦点"),
        //             onPressed: () {
        //               focusScopeNode ??= FocusScope.of(context);
        //               focusScopeNode?.requestFocus(focusNode2);
        //             },
        //           ),
        //           ElevatedButton(
        //             onPressed: () {
        //               // 当所有编辑框都失去焦点时键盘就会收起
        //               focusNode1.unfocus();
        //               focusNode2.unfocus();
        //             },
        //             child: const Text("隐藏键盘"),
        //           )
        //         ],
        //       );
        //     }),
        //   ],
        // ),

        ///
        ///
        child: Theme(
          data: Theme.of(context).copyWith(
            hintColor: Colors.grey[200], //定义下划线颜色
            inputDecorationTheme: const InputDecorationTheme(
              labelStyle: TextStyle(color: Colors.grey), //定义label字体样式
              hintStyle:
                  TextStyle(color: Colors.grey, fontSize: 14.0), //定义提示文本样式
            ),
          ),
          child: const Column(
            children: <Widget>[
              TextField(
                decoration: InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  labelText: "密码",
                  hintText: "您的登录密码",
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0),
                ),
                obscureText: true,
              )
            ],
          ),
        ),
      ),
    );
  }
}
