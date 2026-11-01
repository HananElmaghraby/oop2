abstract class Shape {
  String color;

  Shape(String color) : color = color;

  double getArea();

  String toString() {
    return 'Shape: color = $color, area = ${getArea()}';
  }
}
class Rectangle extends Shape {
  int length;
  int width;

  Rectangle(int length, int width, String color)
      : length = length,
        width = width,
        super(color);

  double getArea() {
    return (length * width).toDouble();
  }

  String toString() {
    return 'Rectangle: length = $length, width = $width';
  }
}

class Triangle extends Shape {
  int base;
  int height;

  Triangle(int base, int height, String color)
      : base = base,
        height = height,
        super(color);

  double getArea() {
    return 0.5 * base * height;
  }

  String toString() {
    return 'Triangle: base = $base, height = $height';
  }
}
void main() {
  List<Shape> shapes = [
    Rectangle(4, 5, 'blue'),
    Triangle(6, 3, 'green'),
  ];
  for (Shape shape in shapes) {
    print('${shape.runtimeType} area: ${shape.getArea()}');
  }
}