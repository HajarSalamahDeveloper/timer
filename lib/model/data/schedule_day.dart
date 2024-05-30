import 'package:floor/floor.dart';

import 'schedule.dart';

@Entity(
  tableName: 'ScheduleDays',
  foreignKeys: [
    ForeignKey(
        childColumns: ['schedule_id'],
        parentColumns: ['schedule_id'],
        entity: Schedule,
        onDelete: ForeignKeyAction.cascade)
  ],
)
class ScheduleDay {
  @PrimaryKey(autoGenerate: true)
  final int? scheduleDayId;

  @ColumnInfo(name: 'schedule_id')
  final int scheduleId;

  final String dayOfWeek;

  ScheduleDay({
    this.scheduleDayId,
    required this.scheduleId,
    required this.dayOfWeek,
  });
}
