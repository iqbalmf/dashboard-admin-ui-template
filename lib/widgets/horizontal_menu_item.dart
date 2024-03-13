import 'package:dashboard_ui_template/constants/controller.dart';
import 'package:dashboard_ui_template/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'custom_text.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

class HorizontalMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  const HorizontalMenuItem(
      {super.key, required this.itemName, required this.onTap});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return InkWell(
        onTap: onTap,
        onHover: (value) {
          value
              ? menuController.onHover(itemName)
              : menuController.onHover("not hovering");
        },
        child: Obx(() => Container(
            color: menuController.isHovering(itemName)
                ? lightGrey.withOpacity(.1)
                : Colors.transparent,
            child: Row(
              children: [
                Visibility(
                  visible: menuController.isHovering(itemName) ||
                      menuController.isActive(itemName),
                  maintainSize: true,
                  maintainAnimation: true,
                  maintainState: true,
                  child: Container(
                    width: 6,
                    height: 40,
                    color: dark,
                  ),
                ),
                SizedBox(width: width / 88),
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: menuController.returnIconFor(itemName),
                ),
                if (!menuController.isActive(itemName))
                  Flexible(
                      child: CustomText(
                    text: itemName,
                    color:
                        menuController.isHovering(itemName) ? dark : lightGrey,
                  ))
                else
                  Flexible(
                      child: CustomText(
                    text: itemName,
                    color: dark,
                    size: 18,
                    weight: FontWeight.bold,
                  ))
              ],
            ))));
  }
}
