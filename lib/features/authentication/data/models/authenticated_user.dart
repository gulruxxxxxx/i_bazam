import 'package:hive/hive.dart';

part 'authenticated_user.g.dart';
@HiveType(typeId : 0)
class AuthenticatedUserModel extends HiveObject {
  @HiveField(0)
  final String id;
  @HiveField(1)
  final String firstName;
  @HiveField(2)
  final String lastName;

  AuthenticatedUserModel({
    required this.id, required this.firstName, required this.lastName});

  @override
  String toString() {
    return 'AuthenticatedUserModel{id : $id ,firstName: $firstName,lastname : $lastName}';
  }
}