import 'package:dashboard_ui_template/widgets/side_menu.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../helpers/local_navigators.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

class LargeScreen extends StatelessWidget {
  const LargeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: SideMenu()),
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }
}
