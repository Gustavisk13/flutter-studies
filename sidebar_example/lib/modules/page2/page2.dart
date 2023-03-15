import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sidebar_example/modules/page2/page2_controller.dart';

class Page2 extends GetView<Page2Controller> {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Random random = Random();
    return Scaffold(
        body: Center(
      child: AnimatedContainer(
          height: 350,
          width: 350,
          duration: const Duration(seconds: 1),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            color: Color.fromRGBO(
              random.nextInt(255),
              random.nextInt(255),
              random.nextInt(255),
              1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Center(
            child: Text(
              'Pagina 2',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
              ),
            ),
          )),
    ));
  }
}
