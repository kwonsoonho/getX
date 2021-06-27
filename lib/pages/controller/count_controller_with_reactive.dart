import 'package:get/get.dart';

enum NUM {FIRST, SECOND}

class User{
  String? name;
  int? age;
  User({this.name,this.age});
}

class CountControllerWithreactive extends GetxController{


  RxInt count = 0.obs;
  RxDouble _double = 0.0.obs;
  RxString value = "".obs;
  Rx<NUM> nums = NUM.FIRST.obs;
  Rx<User> user = User(name : "수노",age : 25).obs;
  RxList list = [].obs;

  void increase(){
    count ++;
    _double(424);
    nums(NUM.SECOND);
    user(User());
    user.update((val) {
      val!.name = "수노";
      val.age = 33;
    });
    // list.addAll(item)
    // list.add(item)
    list.addIf(user.value.name == "수노", "okey");
  }

  void putNumber(int value){
    count(value);
  }
  
  @override
  void onInit() {
    ever(count, (_) => print("매번 호출"));
    once(count, (_) => print("한번만 호출"));
    debounce(count, (_) => print("마지막 변경에 대한 한번만 호출"),time: Duration(seconds: 1));
    interval(count, (_) => print("변경 되고 있는 동안 1초마다 호출"),time: Duration(seconds: 1));
    super.onInit();
  }
  
}