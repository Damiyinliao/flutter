import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({super.key}) : super();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Container"),
      ),
      body: Column(
        spacing: 50.0,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 50.0, left: 120.0),
            constraints:
                const BoxConstraints.tightFor(width: 200.0, height: 150.0),
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                colors: [Colors.red, Colors.orange],
                center: Alignment.topLeft,
                radius: .98,
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black54,
                  offset: Offset(2.0, 2.0),
                  blurRadius: 4.0,
                )
              ],
            ),
            transform: Matrix4.rotationZ(.2),
            alignment: Alignment.center,
            child: const Text(
              "5.20",
              style: TextStyle(color: Colors.white, fontSize: 40.0),
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.orange),
              child: Text("Hello world!"),
            ),
          ),
          const DecoratedBox(
            decoration: BoxDecoration(color: Colors.orange),
            child: Padding(
              padding: EdgeInsets.all(20.0),
              child: Text("Hello world!"),
            ),
          ),
        ],
      ),
    );
  }
}
