import 'package:easy_sidemenu/easy_sidemenu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sidebar_example/modules/page1/page1.dart';
import 'package:sidebar_example/modules/page2/page2.dart';

class RootController extends GetxController {
  final RxInt selectedIndex = 0.obs;

  List<Widget> views = const [
    Page1(),
    Page2(),
  ];
}
