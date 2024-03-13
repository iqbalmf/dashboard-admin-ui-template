import 'package:flutter/material.dart';

import '../constants/controller.dart';
import '../routing/router.dart';
import '../routing/routes.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

Navigator localNavigator() => Navigator(
  key: navigationController.navigatorKey,
  onGenerateRoute: generateRoute,
  initialRoute: overviewPageRoute,
);