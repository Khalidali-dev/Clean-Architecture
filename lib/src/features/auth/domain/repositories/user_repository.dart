import '../../../../src.dart';

abstract class UserRepository {
  Future<Either<Failure, UserModel>> getUser(String uid);
  Future<Either<Failure, void>> updateUser(UserModel userModel);
}
