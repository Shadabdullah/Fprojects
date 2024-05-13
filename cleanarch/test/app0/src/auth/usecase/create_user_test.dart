// What does the class depends on ?
// Answer - Authenticaiton Repositories
// how we can create fake version of the dependencies
// Anser use -- Mocktail
// how we controle what our dependecies do ?
// Answer using MocktailApi'

import 'package:cleanarch/app0/src/auth/repositories/auth_repo.dart';
import 'package:cleanarch/app0/src/auth/usecase/create_user.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockAuthenticationRepositoris extends Mock
    implements AuthenticationRepositories {}

void main() {
  late CreateUser usecase;
  late AuthenticationRepositories repositories;

  const param = CreateUserParam.empty();

  setUp(() {
    repositories = MockAuthenticationRepositoris();
    usecase = CreateUser(repositories);
  });

  test('Should create AuthenticationRepositories.createUser', () async {
    // Arrange

    when(() => repositories.createUser(
            createdAt: any(named: 'createdAt'),
            name: any(named: 'name'),
            avatar: any(named: 'avatar')))
        .thenAnswer((_) async => const Right(null));

    //Act
    final result = usecase(param);

    //Assert
    expect(result, equals(const Right<dynamic, void>(null)));

    verify(() => repositories.createUser(
        createdAt: param.createdAt,
        name: param.name,
        avatar: param.avatar)).called(1);

    verifyNoMoreInteractions(repositories);
  });
}
