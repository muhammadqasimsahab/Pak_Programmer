import 'package:flutter/material.dart';

class CirculerIndicator extends Decoration {
  final Color color;
  double radius;
  CirculerIndicator({
    required this.color,
    required this.radius,
  });
  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) {
    // TODO: implement createBoxPainter
   return _circularPointer(color:color,radius:radius);
  }

}

class _circularPointer extends BoxPainter {

    late Color color;
  double radius;
  _circularPointer({
    required this.color,
    required this.radius,
  });
  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
late Paint paint;
paint =Paint()..color=color;
paint=Paint()..isAntiAlias=true;
final Offset circleOffset=offset+Offset(cfg.size!.width/2, cfg.size!.height-radius);
canvas.drawCircle(circleOffset, radius, paint);
  }

}
