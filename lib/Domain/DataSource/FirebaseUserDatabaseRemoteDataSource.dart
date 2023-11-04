import 'package:authdemo/Data/Model/Users/UserDTO.dart';

abstract class FirebaseUserDatabaseRemoteDataSource {
  Future<String> createUser({required UserDTO user , required String uid});
}