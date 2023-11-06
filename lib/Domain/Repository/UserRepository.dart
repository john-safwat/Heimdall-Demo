
import 'package:authdemo/Domain/Models/Users/User.dart';
import 'package:firebase_auth/firebase_auth.dart';


abstract class UserRepository {
  Future<User> createUser({required MyUser user});
  Future<User> login({required String email , required String password});
}