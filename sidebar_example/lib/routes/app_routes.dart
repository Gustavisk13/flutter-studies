import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:sidebar_example/modules/root/root.dart';
import 'package:sidebar_example/modules/root/root_binding.dart';

import '../modules/page1/page1.dart';
import '../modules/page1/page1_binding.dart';
import '../modules/page2/page2.dart';
import '../modules/page2/page2_binding.dart';

class AppRoutes {
  static const String page1 = '/page1';
  static const String page2 = '/page2';
  static const String root = '/';

  static final routes = [
    GetPage(name: page1, page: () => Page1(), binding: Page1Binding()),
    GetPage(name: page2, page: () => Page2(), binding: Page2Binding()),
    GetPage(name: root, page: () => RootPage(), binding: RootBinding()),
  ];
}
