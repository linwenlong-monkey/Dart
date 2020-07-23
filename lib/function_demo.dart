//dart是面向对象的语言，所以函数也是对象，是Funcation对象

//举例
bool equal(String string1, String string2) {
  return string1 == string2;
}

String checkoutStrings(List<String> strs, String que, Function equal) {
  for (var str in strs) {
    if (equal(str, que)) {
      print(str);
    }
  }
}

//可选参数，用[]把参数括号起来

String getInfo1(String name, String sex, [String from]) {
  var info = '$name sex is $sex';
  if (from != null) {
    info = '$info from $from';
  }

  return info;
}

//参数默认值
String getInfo2(String name, String sex, [String from = 'China']) {
  var info = '$name sex is $sex';
  if (from != null) {
    info = '$info from $from';
  }
  return info;
}

//函数的返回值,
//1.每个函数都有返回值，在dart中函数的返回值可以省略，但是编译器会自动返回null。如果调用下面的hello()方法，返回的是null。
hello() {}

// 类型检测操作符，as强制类型转好，is检查对象是否是当前类型，

class User extends Object {
  var name;
  var age;
  dynamic weight;
}

//赋值操作符 = 和 ??=
//=表示将值赋值给左边的变量
//??=表示如果左边的值是null的时候，才将右边的值赋值给左边的变量
void setValue() {
  var x = 20;
  var a = x; //将x赋值给a
  var b; //没有初始化的变量默认都是null。
  b ??= x; //如果b为null的时候则赋值给b，否则b保持不变/
}
