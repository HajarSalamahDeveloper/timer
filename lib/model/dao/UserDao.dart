import 'package:floor/floor.dart';

import '../data/user_model.dart';

@dao
abstract class UserDao {
  @insert
  Future<int> insertUser(User user);

  @Query('SELECT * FROM Users WHERE userId = :id')
  Future<User?> getUser(int id);

  @update
  Future<int> updateUser(User user);

  @delete
  Future<int> deleteUser(User user);
}
