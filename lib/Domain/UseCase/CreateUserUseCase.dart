import 'package:authdemo/Core/DI/UserRepositoryDI.dart';
import 'package:authdemo/Domain/Models/Users/User.dart';
import 'package:authdemo/Domain/Repository/UserRepository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class CreateUserUseCase {

  UserRepository repository;
  CreateUserUseCase({required this.repository});

  Future<User> invoke({required String name , required String email , required String password})async{
    var response = await repository.createUser(user: MyUser(email: email, password: password, name: name));
    return response;
  }

}

CreateUserUseCase injectCreateUserUseCase(){
  return CreateUserUseCase(repository: injectUserRepo());
}