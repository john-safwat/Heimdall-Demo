
import 'package:authdemo/Domain/Models/Users/User.dart';


abstract class UserRepository {
  Future<String> createUser({required MyUser user});
}