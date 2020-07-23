import 'package:flutter/material.dart';

void demo2() {
  //基本的数字类型 Number、string、boolean、list、map
  // numberDemo();
  // stringDemo();
  // bolleanDemo();
  // listDemo();
  mapDemo();
}

//Number
void numberDemo() {
  //Number,包括了int和double。int类型不能有小数，int继承num类，里面提供了很多方法

  int x = 18;
  print('x = $x');
  //int 常用的几个方法
  //isEven判断是否是偶数
  //isOdd判断是否是基数
  //toDouble 转成double类型
  //abs 取绝对值
  //isNaN 是否是数值类型

  double y = 15;
  print('y = $y');
  //double里面常用的方法和int差不多，都是继承num
  double z = 14;

  double f = y + z;
  print('f = $f');

  int inter = (y / z).ceil();

  double inter1 = (y % z);

  print('取整 = $inter');
  print('取余 = $inter1');
}

//String 字符串可以用单引号也可以使用双引号

void stringDemo() {
  var s1 = 'hello world';
  print(s1);

  //字符串相加
  var s2 = 'hello';
  var s3 = 'dart';

  var s4 = s2 + s3;

  print(s4);

  //常用的方法，是否为空、取子串、分割字符串

  //可以使用三个单引号或双引号定义多行的string类型，
  var s5 = '''
    第一行文字
    第二行文字
   ''';

  var s6 = """
    第一行文字
    第二行文字
   """;
  //split分割字符串转换成list
  s6.split('第');
}

// Boolean 在这里，只有为true才是真，其他都是假，跟有些语言不一样，在有的语言为0是false，大于0就是true。在dart语言则不是，值必须是true或者false
void bolleanDemo() {
  //Dart中的布尔类型是 bool ，它只有两个字面值：true 和 false。都是编译时常量。

  bool lean = true;

  // Check for an empty string.
  var fullName = '';
  assert(fullName.isEmpty);

// Check for zero.
  var hitPoints = 0;
  assert(hitPoints <= 0);

// Check for null.
  var unicorn;
  assert(unicorn == null);

// Check for NaN.
  var iMeantToDoThis = 0 / 0;
  assert(iMeantToDoThis.isNaN);
}

//List类型，相单于数组

void listDemo() {
  //定义list
  //隐式转换为list
  //第一种
  var list1 = [1, 2, 3, 4];

  //第二种 Unsupported operation: Cannot add to a fixed-length list
  //这种里面不能添加元素，一个固定长度的list
  List list2 = new List(3);
  // list2.add(5);
  // list2.remove(0);

  //第三种
  // List<int> list = [1, 2, 3, 4, 5];
  List list = [1, 2, 3, 4];

  //添加元素
  list.add(5);
  print(list);
  //移除元素
  list.remove(5);
  print(list);
  //修改元素 第三个参数是一个list对象
  //  *ist.replaceRange(1, 4, [6, 7]);
  list.replaceRange(0, 1, [6, 7]);
  print(list);
  //将list转换成字符串并用，好分割
  //  * list.join(', '); // '1, 6, 7, 5'

  print(list.join(','));

  //便利list

  for (var i = 0; i < list.length; i++) {
    var object = list[i];
    print('index is ($i), object is ($object)');
  }

  // for in
  for (var item in list) {
    print(item);
  }

  //清空所有数据
  list.clear();

  print('list is $list');
}

//set

void setDemo() {
  var sets = {'a', 'b', 'c'};
}

//map key和value类型，

void mapDemo() {
  //定义map类型
  //第一种
  var week = {
    'monday': '星期一',
    'tuesday': '星期二',
    'wednesday': '星期三',
    'thursday': '星期四',
  };
  //第二种 通过map的构造函数

  var week1 = new Map();
  week1['monday'] = '星期一';
  week1['tuesday'] = '星期二';
  week1['wednesday'] = '星期三';

  //添加元素
  week1['thursday'] = '星期四';
  print(week1);
  //修改元素
  week1['thursday'] = '星期四1';
  print(week1);
  //移除元素
  week1.remove('thursday');
  print(week1);
  //获取长度
  var length = week1.length;
  print('length is $length');
  //便利所有的key
  print('keys is' + week1.keys.toString());
  Iterable keys = week1.keys;
  print(keys);
  week1.keys.forEach((element) {
    print(element);
  });

  //检查map是否存在指定的key
  assert(week1['monday'] != null);
}
