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
      home: const MyFormPage(title: 'Flutter Input Component'),
    );
  }
}

class MyFormPage extends StatefulWidget {
  const MyFormPage({super.key, required this.title}) : super();
  final String title;

  @override
  // ignore: library_private_types_in_public_api
  _FormState createState() => _FormState();
}

class _FormState extends State<MyFormPage> {
  String username = "";
  String password = "";
  final GlobalKey _formKey = GlobalKey<FormState>();
  final TextEditingController _unameController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey, //设置globalKey，用于后面获取FormState
          child: Column(
            spacing: 10.0,
            children: [
              TextFormField(
                autofocus: true,
                controller: _unameController,
                decoration: const InputDecoration(
                  labelText: "用户名",
                  hintText: "用户名或邮箱",
                  icon: Icon(Icons.person),
                ),
                // 校验用户名
                validator: (v) {
                  return v!.trim().isNotEmpty ? null : "用户名不能为空";
                },
              ),
              TextFormField(
                controller: _pwdController,
                decoration: const InputDecoration(
                  labelText: "密码",
                  hintText: "您的登录密码",
                  icon: Icon(Icons.lock),
                ),
                obscureText: true,
                //校验密码
                validator: (v) {
                  return v!.trim().length > 5 ? null : "密码不能少于6位";
                },
              ),
              Padding(
                padding: const EdgeInsets.only(top: 28.0),
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        child: const Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Text("登录"),
                        ),
                        onPressed: () {
                          // 通过_formKey.currentState 获取FormState后，
                          // 调用validate()方法校验用户名密码是否合法，校验
                          // 通过后再提交数据。
                          if ((_formKey.currentState as FormState).validate()) {
                            //验证通过提交数据
                          }
                        },
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
