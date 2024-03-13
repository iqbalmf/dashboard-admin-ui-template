import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

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
        Expanded(
            flex: 1,
            child: Container(
              color: Colors.red,
            )),
        Expanded(
            flex: 5,
            child: Container(
              color: Colors.blue,
            ))
      ],
    );
  }
}
