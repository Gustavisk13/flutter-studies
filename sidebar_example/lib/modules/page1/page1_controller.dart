import 'package:get/get.dart';

class Page1Controller extends GetxController {
  final count = 0.obs;
  void increment() => count.value++;
  final RxInt turns = 0.obs;

  void toggle() {
    turns.value = turns.value == 0 ? 1 : 0;
  }
}
