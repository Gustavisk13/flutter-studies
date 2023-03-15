import 'package:get/get.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sidebar_example/modules/page2/page2_controller.dart';

class Page2Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<Page2Controller>(() => Page2Controller());
  }
}
