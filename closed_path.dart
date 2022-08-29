import 'dart:math' as math;

class ClosedPath {
  List<math.Point> _points = [];

  void moveTo(math.Point p) {
    _points = [p];
  }

  void lineTo(math.Point p) {
    _points.add(p);
  }
}

