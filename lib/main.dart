import 'package:flutter/material.dart';
import 'demo1.dart';

void main(List<String> args) {
  // print('args = $args');
  demo1();
}

// void main() => runApp(DartDemo());

class DartDemo extends StatelessWidget {
  void backPressed() {
    print('hello world');
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'dartDemo',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('dart'),
          leading: new BackButton(
            color: Colors.red,
            onPressed: backPressed,
          ),
        ),
        body: new Container(
          child: new Center(
            child: new Text('hello dart'),
          ),
        ),
      ),
    );
  }
}
