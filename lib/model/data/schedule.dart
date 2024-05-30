import 'package:floor/floor.dart';
import 'package:timer/model/data/user_model.dart';

import 'course.dart';

@Entity(
  tableName: 'Schedules',
  foreignKeys: [
    ForeignKey(
        childColumns: ['user_id'],
        parentColumns: ['user_id'],
        entity: User,
        onDelete: ForeignKeyAction.cascade),
    ForeignKey(
        childColumns: ['course_id'],
        parentColumns: ['course_id'],
        entity: Course,
        onDelete: ForeignKeyAction.cascade)
  ],
)
class Schedule {
  @PrimaryKey(autoGenerate: true)
  final int? scheduleId;

  @ColumnInfo(name: 'user_id')
  final int userId;

  @ColumnInfo(name: 'course_id')
  final int courseId;

  final String startDate;
  final String? endDate;
  final String startTime;
  final String endTime;
  final String repeatOption;

  Schedule({
    this.scheduleId,
    required this.userId,
    required this.courseId,
    required this.startDate,
    this.endDate,
    required this.startTime,
    required this.endTime,
    required this.repeatOption,
  });
}
