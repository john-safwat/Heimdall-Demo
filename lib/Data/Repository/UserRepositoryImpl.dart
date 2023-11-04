import 'package:authdemo/Domain/DataSource/FirebaseAuthRemoteDataSource.dart';
import 'package:authdemo/Domain/DataSource/FirebaseUserDatabaseRemoteDataSource.dart';
import 'package:authdemo/Domain/Models/Users/User.dart';
import 'package:authdemo/Domain/Repository/UserRepository.dart';

class UserRepositoryImpl implements UserRepository{

  FirebaseAuthRemoteDataSource firebaseAuthRemoteDataSource;
  FirebaseUserDatabaseRemoteDataSource firebaseUserDatabaseRemoteDataSource;

  UserRepositoryImpl({
    required this.firebaseAuthRemoteDataSource ,
    required this.firebaseUserDatabaseRemoteDataSource
});

  @override
  Future<String> createUser({required MyUser user}) async {
    try{
      var uid = await firebaseAuthRemoteDataSource.createUser(user: user.toDataSource());
      var response = await firebaseUserDatabaseRemoteDataSource.createUser(user: user.toDataSource(), uid: uid);
      return uid;
    }catch(e){
      return e.toString();
    }
  }

}