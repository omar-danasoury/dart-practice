class Point {
  const Point(x, y)
      : x = x,
        y = y;
  final x;
  final y;
  
  // implementing the toString function for a custom object
  String toString() => 'Point($x, $y)';
  
  // implementing the == operator for the Point class;
  // 'covariant' keyword is used to make sure that the passed object is indeed a 'Point' object
  bool operator ==(covariant Point other) {
    return (other.x == x) & (other.y == y);
  }
}
