class Person {
  String name;
  String address;

  Person(String name, String address)
      : name = name,
        address = address;
  String toString() {
    return '$name($address)';
  }
}
class Student extends Person {
  int numCourses = 0;
  List<String> courses = [];
  List<int> grades = [];

  Student(String name, String address) : super(name, address);

  void addCourseGrade(String course, int grade) {
    courses.add(course);
    grades.add(grade);
    numCourses++;
  }

  void printGrades() {
    for (int i = 0; i < courses.length; i++) {
      print('${courses[i]}: ${grades[i]}');
    }
  }

  double getAverageGrades() {
    if (grades.isEmpty) {
      return 0.0;
    }
    int total = 0;
    for (int grade in grades) {
      total += grade;
    }
    return total / grades.length;
  }
}
class Teacher extends Person {
  int numCourses = 0;
  List<String> courses = [];
  Teacher(String name, String address) : super(name, address);
  bool addCourse(String course) {
    if (courses.contains(course)) {
      return false;
    }
    courses.add(course);
    numCourses++;
    return true;
  }
  bool removeCourse(String course) {
    if (!courses.contains(course)) {
      return false;
    }
    courses.remove(course);
    numCourses--;
    return true;
  }
}

void main() {
  Student s = Student('Ali', 'Alexandria');
  s.addCourseGrade('Math', 90);
  s.addCourseGrade('Physics', 80);
  print(s.toString());
  s.printGrades();
  print(s.getAverageGrades());

  Teacher t = Teacher('Sara', 'Cairo');
  print(t.addCourse('Dart'));
  print(t.addCourse('Dart'));
  print(t.removeCourse('Flutter'));
  print(t.removeCourse('Dart'));
}