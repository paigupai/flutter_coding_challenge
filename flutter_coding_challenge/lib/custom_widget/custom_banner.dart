import 'dart:math';

import 'package:flutter/material.dart';

class CustomBanner extends StatelessWidget {
  const CustomBanner({Key key, this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    double h = 20, w = 100;

    return ClipRect(
      child: Stack(
        children: [
          child,
          Positioned(
            right: 0,
            top: sqrt(w * w / 2 - sqrt2 * w * h + h * h),
            child: Transform.rotate(
              alignment: Alignment.bottomRight,
              angle: pi / 4,
              child: Container(
                color: Colors.red.withOpacity(0.8),
                width: w,
                height: h,
              ),
            ),
          )
        ],
      ),
    );
  }
}
