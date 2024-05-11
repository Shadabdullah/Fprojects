import 'package:cleanarch/app0/core/utils/typedef.dart';
import 'package:cleanarch/app0/src/auth/enteties/user.dart';

abstract class AuthenticationRepositories {
  const AuthenticationRepositories();

  ResultFuture<void> createUser(
      {required String createdAt,
      required String name,
      required String avatar});

  ResultFuture<List<User>> getUsers();
}
