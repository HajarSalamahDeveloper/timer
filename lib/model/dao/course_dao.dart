import 'package:floor/floor.dart';

import '../data/course.dart';

@dao
abstract class CourseDao {
  @insert
  Future<int> insertCourse(Course course);

  @Query('SELECT * FROM Courses WHERE courseId = :id')
  Future<Course?> getCourse(int id);

  @update
  Future<int> updateCourse(Course course);

  @delete
  Future<int> deleteCourse(Course course);
}
