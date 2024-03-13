import 'package:flutter/material.dart';
import 'package:get/get.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

class NavigationController extends GetxController{
  static NavigationController instance = Get.find();
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  Future<dynamic> navigateTo(String routeName){
    return navigatorKey.currentState!.pushNamed(routeName);
  }

  goBack() => navigatorKey.currentState?.pop();

}