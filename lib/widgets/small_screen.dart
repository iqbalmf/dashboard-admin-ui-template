import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/**
 * Created by IqbalMF on 2024.
 * Package
 */

class SmallScreen extends StatelessWidget {
  const SmallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.green,
    );
  }
}
