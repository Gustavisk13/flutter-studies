import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sidebar_example/modules/page1/page1_controller.dart';

class Page1Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page1Controller>(() => Page1Controller());
  }
}
