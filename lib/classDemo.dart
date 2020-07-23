//类
//类中定义的所有的变量都会隐式的定义setter方法，针对非空的变量会额外增加getter方法

import 'dart:js_util';

class User {
  String name;
  int age;

  //构造函数，与类名相同
  User(String name, int age) {
    this.name = name;
    this.age = age;
  }

  //上面的构造函数可以简化 //直接将成员变量传入构造函数中
  // User(this.name, this.age);

  //命名构造函数
  User.fromJson(Map json) {
    this.name = json["name"];
    this.age = json["age"];
  }
}

void test() {
  User user = new User('name', 10);
}

//读取和写入对象

class Rect {
  num left;
  num top;
  num width;
  num height;

  Rect(this.left, this.width, this.top, this.height);

  //get

  num get right {
    return left + width;
  }

  //set
  set right(num value) {
    left = value - width;
  }
}

//重载操作

class Vector {
  final int x;
  final int y;

  const Vector(this.x, this.y);

  //重载加号
  Vector operator +(Vector v) {
    return new Vector(x + v.x, y + v.y);
  }

  //重载减号
  Vector operator -(Vector v) {
    return new Vector(x - v.x, y - v.y);
  }

  //在下面可以直接对两个vector对象进行相加减，会调用相应的方法
}
