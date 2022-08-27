class Point {
  const Point(x, y)
      : x = x,
        y = y;
  final x;
  final y;
  
  // implementing the toString function for a custom object
  String toString() => 'Point($x, $y)';
}
