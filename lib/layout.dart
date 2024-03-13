import 'package:dashboard_ui_template/helpers/responsive.dart';
import 'package:dashboard_ui_template/widgets/large_screen.dart';
import 'package:dashboard_ui_template/widgets/small_screen.dart';
import 'package:dashboard_ui_template/widgets/top_nav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

class SiteLayout extends StatelessWidget {
  SiteLayout({super.key});

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: topNavigationBar(context, scaffoldKey),
      drawer: Drawer(),
      body: ResponsiveWidget(
        largeScreen: LargeScreen(),
        smallScreen: SmallScreen(),
      ),
    );
  }
}
