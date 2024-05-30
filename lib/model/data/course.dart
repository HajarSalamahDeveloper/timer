import 'package:floor/floor.dart';

@Entity(tableName: 'Courses')
class Course {
  @PrimaryKey(autoGenerate: true)
  final int? courseId;

  final String courseName;

  Course({this.courseId, required this.courseName});
}
