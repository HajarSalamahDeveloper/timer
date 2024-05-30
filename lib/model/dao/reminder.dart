import 'package:floor/floor.dart';

import '../data/reminder.dart';

@dao
abstract class ReminderDao {
  @insert
  Future<int> insertReminder(Reminder reminder);

  @Query('SELECT * FROM Reminders WHERE reminderId = :id')
  Future<Reminder?> getReminder(int id);

  @update
  Future<int> updateReminder(Reminder reminder);

  @delete
  Future<int> deleteReminder(Reminder reminder);
}
