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


void main(List<String> args) {
  final path = ClosedPath()
    ..moveTo(math.Point(0, 0))
    ..lineTo(math.Point(2, 0))
    ..lineTo(math.Point(2, 2))
    ..lineTo(math.Point(0, 2));
}
