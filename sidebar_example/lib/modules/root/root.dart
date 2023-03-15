import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:side_navigation/side_navigation.dart';
import 'package:sidebar_example/modules/root/root_controller.dart';

class RootPage extends GetView<RootController> {
  const RootPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sidebar Example'),
      ),
      body: Obx(
        () => Row(children: [
          SideNavigationBar(
            toggler: const SideBarToggler(
              expandIcon: Icons.arrow_forward_ios,
              shrinkIcon: Icons.arrow_back_ios,
            ),
            header: const SideNavigationBarHeader(
              title: Text('Header'),
              subtitle: SizedBox.shrink(),
              image: Icon(Icons.person),
            ),
            selectedIndex: controller.selectedIndex.value,
            items: const [
              SideNavigationBarItem(
                icon: Icons.dashboard,
                label: 'Page 1',
              ),
              SideNavigationBarItem(
                icon: Icons.person,
                label: 'Page 2',
              ),
            ],
            onTap: (index) {
              controller.selectedIndex.value = index;
            },
          ),
          Expanded(child: controller.views[controller.selectedIndex.value]),
        ]),
      ),
    );
  }
}
