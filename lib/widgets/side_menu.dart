import 'package:dashboard_ui_template/constants/controller.dart';
import 'package:dashboard_ui_template/widgets/side_menu_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../constants/style.dart';
import '../helpers/responsive.dart';
import '../routing/routes.dart';
import 'custom_text.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

class SideMenu extends StatelessWidget {
  const SideMenu({super.key});

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return Container(
      color: light,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  height: 40,
                ),
                Row(
                  children: [
                    SizedBox(width: _width / 48),
                    Padding(
                      padding: const EdgeInsets.only(right: 12),
                      child: Image.asset("assets/icons/logo.png"),
                    ),
                    const Flexible(
                      child: CustomText(
                        text: "Dashboard",
                        size: 20,
                        weight: FontWeight.bold,
                        color: active,
                      ),
                    ),
                    SizedBox(width: _width / 48),
                  ],
                ),
                const SizedBox(
                  height: 30,
                ),
              ],
            ),
          Divider(
            color: lightGrey.withOpacity(.1),
          ),
          Column(
            children: sideMenuItemsRoutes
                .map((item) => SideMenuItem(
                itemName: item.name,
                onTap: () {
                  if(item.route == authenticationPageRoute){
                    Get.offAllNamed(authenticationPageRoute);
                    menuController.changeActiveItemTo(overviewPageDisplayName);

                  }
                  if (!menuController.isActive(item.name)) {
                    menuController.changeActiveItemTo(item.name);
                    if(ResponsiveWidget.isSmallScreen(context)) {
                      Get.back();
                    }
                  }
                }))
                .toList(),
          )
        ],
      ),
    );
  }
}
