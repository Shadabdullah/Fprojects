import 'package:cleanarch/app0/core/usecase/usecase.dart';
import 'package:cleanarch/app0/src/auth/repositories/auth_repo.dart';
import 'package:equatable/equatable.dart';

import '../../../core/utils/typedef.dart';

class CreateUser extends UsecaseWithParams<void, CreateUserParam> {
  const CreateUser(this._repositories);

  final AuthenticationRepositories _repositories;

  @override
  ResultFuture<void> call(CreateUserParam param) async =>
      _repositories.createUser(
          createdAt: param.createdAt, name: param.name, avatar: param.avatar);
}

class CreateUserParam extends Equatable {
  final String createdAt;
  final String name;
  final String avatar;

  const CreateUserParam(
      {required this.createdAt, required this.name, required this.avatar});

  @override
  List<Object?> get props => [createdAt, name, avatar];
}
