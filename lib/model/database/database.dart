import 'package:floor/floor.dart';

import '../dao/UserDao.dart';
import '../dao/course_dao.dart';
import '../dao/reminder.dart';
import '../dao/schedule_dao.dart';
import '../dao/schedule_day_dao.dart';
import '../data/course.dart';
import '../data/reminder.dart';
import '../data/schedule.dart';
import '../data/schedule_day.dart';
import '../data/user_model.dart';

part 'database.g.dart';

@Database(version: 1, entities: [User, Course, Schedule, ScheduleDay, Reminder])
abstract class AppDatabase extends FloorDatabase {
  UserDao get userDao;
  CourseDao get courseDao;
  ScheduleDao get scheduleDao;
  ScheduleDayDao get scheduleDayDao;
  ReminderDao get reminderDao;
}
