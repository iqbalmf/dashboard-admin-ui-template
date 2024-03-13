import 'package:dashboard_ui_template/widgets/vertical_menu_item.dart';
import 'package:flutter/material.dart';

import '../helpers/responsive.dart';
import 'horizontal_menu_item.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

class SideMenuItem extends StatelessWidget {
  final String itemName;
  final Function() onTap;

  SideMenuItem({Key? key, required this.itemName, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (ResponsiveWidget.isCustomSize(context)) {
      return VerticalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    } else {
      return HorizontalMenuItem(
        itemName: itemName,
        onTap: onTap,
      );
    }
  }
}
