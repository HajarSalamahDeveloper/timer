import 'package:floor/floor.dart';

import 'schedule.dart';

@Entity(
  tableName: 'Reminders',
  foreignKeys: [
    ForeignKey(
        childColumns: ['schedule_id'],
        parentColumns: ['schedule_id'],
        entity: Schedule,
        onDelete: ForeignKeyAction.cascade)
  ],
)
class Reminder {
  @PrimaryKey(autoGenerate: true)
  final int? reminderId;

  @ColumnInfo(name: 'schedule_id')
  final int scheduleId;

  final int reminderTime;

  Reminder({
    this.reminderId,
    required this.scheduleId,
    required this.reminderTime,
  });
}
