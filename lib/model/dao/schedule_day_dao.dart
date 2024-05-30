import 'package:floor/floor.dart';

import '../data/schedule_day.dart';

@dao
abstract class ScheduleDayDao {
  @insert
  Future<int> insertScheduleDay(ScheduleDay scheduleDay);

  @Query('SELECT * FROM ScheduleDays WHERE scheduleDayId = :id')
  Future<ScheduleDay?> getScheduleDay(int id);

  @update
  Future<int> updateScheduleDay(ScheduleDay scheduleDay);

  @delete
  Future<int> deleteScheduleDay(ScheduleDay scheduleDay);
}
