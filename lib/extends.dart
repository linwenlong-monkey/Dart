//继承

//动物类
class Animal {
  //method eat
  void eat() {
    print('eat');
  }
}

//人继承动物
//会继承Animal里面的所有成员变量和方法

class Person extends Animal {
  //method say
  void say() {
    print('say');
  }

  //method study
  void study() {
    print('study');
  }
}
