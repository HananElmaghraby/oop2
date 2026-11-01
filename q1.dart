import 'dart:math';

class GeometricObject {
  String color;
  bool filled;

  GeometricObject()
      : color = 'white',
        filled = false;

  GeometricObject.withValues(this.color, this.filled);

  String toString() {
    return 'GeometricObject: color = $color, filled = $filled';
  }
}

class Triangle extends GeometricObject {
  double side1;
  double side2;
  double side3;

  Triangle()
      : side1 = 1.0,
        side2 = 1.0,
        side3 = 1.0;

  Triangle.withSides(this.side1, this.side2, this.side3);

  double getArea() {
    double s = (side1 + side2 + side3) / 2;
    return sqrt(s * (s - side1) * (s - side2) * (s - side3));
  }

  double getPerimeter() {
    return side1 + side2 + side3;
  }

  String toString() {
    return 'Triangle: side1 = $side1, side2 = $side2, side3 = $side3';
  }
}

class Rectangle extends GeometricObject {
  double width;
  double height;

  Rectangle()
      : width = 1.0,
        height = 1.0;

  Rectangle.withValues(this.width, this.height, String color, bool filled)
      : super.withValues(color, filled);

  double getArea() {
    return width * height;
  }

  double getPerimeter() {
    return 2 * (width + height);
  }

  String toString() {
    return 'Rectangle: height = $height, width = $width';
  }
}

void main() {
  Triangle t = Triangle.withSides(3, 4, 5);
  print(t.toString());
  print('Area: ${t.getArea()}');
  print('Perimeter: ${t.getPerimeter()}');

  Rectangle r = Rectangle.withValues(2, 5, 'red', true);
  print(r.toString());
  print('Area: ${r.getArea()}');
  print('Color: ${r.color}, filled: ${r.filled}');
}