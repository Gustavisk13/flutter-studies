import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sidebar_example/modules/root/root_controller.dart';

class RootBinding extends Bindings {
  @override
  void dependencies() {
    // Get.lazyPut<Page2Controller>(() => Page2Controller());
    // Get.lazyPut<Page1Controller>(() => Page1Controller());
    Get.lazyPut<RootController>(() => RootController());
  }
}
