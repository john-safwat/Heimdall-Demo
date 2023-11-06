import 'package:authdemo/Core/DI/UserRepositoryDI.dart';
import 'package:authdemo/Domain/Repository/UserRepository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginUserUseCase {

  UserRepository repository;
  LoginUserUseCase({required this.repository});

  Future<User> invoke({required String email , required String password})async{

    var response = await repository.login(email: email, password: password);
    return response;

  }


}

LoginUserUseCase injectLoginUserUseCase(){
  return LoginUserUseCase(repository: injectUserRepo());
}