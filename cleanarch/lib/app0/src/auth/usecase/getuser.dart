import 'package:cleanarch/app0/core/usecase/usecase.dart';
import 'package:cleanarch/app0/core/utils/typedef.dart';
import 'package:cleanarch/app0/src/auth/repositories/auth_repo.dart';

import '../enteties/user.dart';

class GetUser extends UsecaseWithoutParams<List<User>> {
  const GetUser(this._repositories);
  final AuthenticationRepositories _repositories;
  @override
  ResultFuture<List<User>> call() async => _repositories.getUsers();
}
