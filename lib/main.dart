import 'package:flutter/material.dart';
import 'demo1.dart';
import 'demo2.dart';
import 'function_demo.dart';
import 'extends.dart';

void main(List<String> args) {
  // print('args = $args');
  // demo1();
  // demo2();

  // var user = new User();
  // user.name = 'linwenlong';
  // user.age = 10;

  // print(user.name);
  // print(user.age);
  // print(user.weight);
  // if (user is User) {
  //   //检查user是否是User

  //   User tmp = user as User; //将user强制转换成User类型
  //   print(tmp.name);
  // }

  Person person = new Person();
  person.eat();
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
