import 'package:flutter/material.dart';

class DecoratedBoxTestPage extends StatelessWidget {
  const DecoratedBoxTestPage({super.key}) : super();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("DecoratedBox Button"),
      ),
      body: Center(
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.red, Colors.orange.shade700],
            ),
            borderRadius: BorderRadius.circular(3.0),
            boxShadow: const [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(2.0, 2.0),
                blurRadius: 4.0,
              ),
            ],
          ),
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 80.0, vertical: 18.0),
            child: Text(
              "Login",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }
}
