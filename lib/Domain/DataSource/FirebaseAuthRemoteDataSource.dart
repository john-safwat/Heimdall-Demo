import 'package:authdemo/Data/Model/Users/UserDTO.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class FirebaseAuthRemoteDataSource {

  Future<User> createUser({required UserDTO user});
  Future<User> login({required String email , required String password});

}