class Point {
  const Point(x, y)
      : x = x,
        y = y;
  final x;
  final y;
  
  // toString:
  // implementing the toString function for a custom object
  // String toString() => 'Point($x, $y)';
  // implementing the toString() method using equatable library
  @override
  bool get stringify => true;
  
  // implementing the == operator for the Point class;
  // 'covariant' keyword is used to make sure that the passed object is indeed a 'Point' object
  bool operator ==(covariant Point other) => (other.x == x) & (other.y == y);
  
  //[Exercise] implementing the + operator
  Point operator +(covariant Point other) =>
      Point((x + other.x), (y + other.y));
  
  //[Exercise] implementing the * operator
  Point operator *(int num) => Point(x * num, y * num);
}

void main(List<String> args) {
  const origin = Point(0, 0);
  const point1 = Point(1, 0);
  const point2 = Point(1, 2);
  const point3 = Point(2, 1);
  print(origin == point1);
  print(origin == point2);
  print('The origin point in the coordinate is ${origin.toString()}');
  print('${point2.toString()} + ${point1.toString()} = ${point2 + point1}');
  print('${point3 * 5}');
}
