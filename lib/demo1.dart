import 'dart:core';

//定义常量和变量
void demo1() {
  //变量
  //定义一个变量var， 在这里没有let
  var name = 'linwenlong';
  print('name is $name');

  //在dart语言中一切都是对象，包括数字的类型
  int age; //name也是对象,如果没有被初始化，则是null
  if (age == null) {
    //判断对象是否为空
    print('age is null');
  } else {
    print('age is not null');
  }

  //常量
  //如果一个变量不可会变化，可以用final或者const来修饰，final表示只能被设定一次，const是一个编译是的常量

  //区别const是编译时的常量，值不能通过计算得到的。final是运行时常量，值可以在运行时产生
  const test1 = "hello"; //正确，编译期常量
  final test2 = "hello"; //正确，运行时常量

  // const test3=DateTime.now();//编译报错,值不是编译期常量
  final test4 = DateTime.now(); //正确，运行时常量

  // const test5=new List();//编译报错,值不是编译期常量
  final test6 = new List(); //正确，运行时常量
}
