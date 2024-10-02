import '../../../../src.dart';

class GetUserUsecase {
  final UserRepository userRepository;
  GetUserUsecase(this.userRepository);

  Future<Either<Failure, UserModel>> call(String uid) =>
      userRepository.getUser(uid);
}
