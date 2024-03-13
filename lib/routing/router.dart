import 'package:dashboard_ui_template/routing/routes.dart';
import 'package:flutter/material.dart';

import '../pages/clients/clients_page.dart';
import '../pages/driver/driver_page.dart';
import '../pages/overview/overview_page.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case overviewPageRoute:
      return _getPageRoute(const OverviewPage());
    case driversPageRoute:
      return _getPageRoute(const DriverPage());
    case clientsPageRoute:
      return _getPageRoute(const ClientsPage());
    default:
      return _getPageRoute(const OverviewPage());
  }
}

PageRoute _getPageRoute(Widget child) {
  return MaterialPageRoute(builder: (context) => child);
}