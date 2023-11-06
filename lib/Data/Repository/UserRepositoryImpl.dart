import 'package:authdemo/Domain/DataSource/FirebaseAuthRemoteDataSource.dart';
import 'package:authdemo/Domain/DataSource/FirebaseUserDatabaseRemoteDataSource.dart';
import 'package:authdemo/Domain/Models/Users/User.dart';
import 'package:authdemo/Domain/Repository/UserRepository.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRepositoryImpl implements UserRepository{

  FirebaseAuthRemoteDataSource firebaseAuthRemoteDataSource;
  FirebaseUserDatabaseRemoteDataSource firebaseUserDatabaseRemoteDataSource;

  UserRepositoryImpl({
    required this.firebaseAuthRemoteDataSource ,
    required this.firebaseUserDatabaseRemoteDataSource
});

  @override
  Future<User> createUser({required MyUser user}) async {
    var uid = await firebaseAuthRemoteDataSource.createUser(user: user.toDataSource());
    var response = await firebaseUserDatabaseRemoteDataSource.createUser(user: user.toDataSource(), uid: uid.uid);
    return uid;
  }

  @override
  Future<User> login({required String email, required String password}) async{
    var response = await firebaseAuthRemoteDataSource.login(email: email, password: password);
    return response;
  }


}