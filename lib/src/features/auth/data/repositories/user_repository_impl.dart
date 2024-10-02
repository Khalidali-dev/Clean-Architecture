import 'package:eschool/src/src.dart';

class UserRepositoryImpl implements UserRepository {
  final UserRemoteDataSource remoteDataSource;

  UserRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Either<Failure, UserModel>> getUser(String uid) async {
    try {
      final remoteUser = await remoteDataSource.getUser(uid);
      return Either.right(remoteUser);
    } catch (e) {
      if (e is ServerException) {
        return Either.left(AuthenticationFailure(e.toString()));
      } else if (e is NetworkException) {
        return Either.left(const NetworkFailure());
      } else if (e is ServerException) {
        return Either.left(const ServerFailure());
      } else {
        return Either.left(UnknownFailure(e.toString()));
      }
    }
  }

  @override
  Future<Either<Failure, void>> updateUser(UserModel user) async {
    try {
      await remoteDataSource.updateUser(user);
      return Either.right(null);
    } catch (e) {
      return Either.left(const ServerFailure());
    }
  }
}
