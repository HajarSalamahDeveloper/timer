import 'package:floor/floor.dart';

import '../data/schedule.dart';

@dao
abstract class ScheduleDao {
  @insert
  Future<int> insertSchedule(Schedule schedule);

  @Query('SELECT * FROM Schedules WHERE scheduleId = :id')
  Future<Schedule?> getSchedule(int id);

  @update
  Future<int> updateSchedule(Schedule schedule);

  @delete
  Future<int> deleteSchedule(Schedule schedule);
}
