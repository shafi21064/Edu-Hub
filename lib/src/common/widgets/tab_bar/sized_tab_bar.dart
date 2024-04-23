import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:torganic/src/common/widgets/tab_bar/tab_controller.dart';


class TabBarViewInfo extends StatelessWidget {
  const TabBarViewInfo({super.key, required this.tabs, required this.tabsView});

  final List<Tab> tabs;
  final List<Widget> tabsView;

  @override
  Widget build(BuildContext context) {
    final tabController = Get.put(AppTabController(myTabsLength: tabs.length));
    return Column(
      children: [
        TabBar(
            unselectedLabelColor: const Color(0xff7B7B7B),
            controller: tabController.controller,
            tabs: tabs),
        SizedBox(
          height: 300,
          width: MediaQuery.sizeOf(context).width,
          // decoration: const BoxDecoration(
          //   color: Colors.white,
          //
          // ),
          child: TabBarView(
            controller: tabController.controller,
            children: tabsView,
          ),
        )
      ],
    );
  }
}