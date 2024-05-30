import 'package:floor/floor.dart';

@Entity(tableName: 'Users')
class User {
  @PrimaryKey(autoGenerate: true)
  final int? userId;

  final String username;
  final String email;
  final String passwordHash;
  final String createdAt;

  User({
    this.userId,
    required this.username,
    required this.email,
    required this.passwordHash,
    required this.createdAt,
  });
}
