import 'package:authdemo/Data/Model/Users/UserDTO.dart';

abstract class FirebaseAuthRemoteDataSource {

  Future<String> createUser({required UserDTO user});
  Future<String> login({required String email , required String password});

}