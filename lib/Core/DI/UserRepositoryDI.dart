import 'package:authdemo/Data/DataSource/FirebaseAuthRemoteDataSourceImpl.dart';
import 'package:authdemo/Data/DataSource/FirebaseUserDatabaseRemoteDataSourceImpl.dart';
import 'package:authdemo/Data/Firebase/FirebaseAuth.dart';
import 'package:authdemo/Data/Firebase/UserDatabase.dart';
import 'package:authdemo/Data/Repository/UserRepositoryImpl.dart';
import 'package:authdemo/Domain/DataSource/FirebaseAuthRemoteDataSource.dart';
import 'package:authdemo/Domain/DataSource/FirebaseUserDatabaseRemoteDataSource.dart';
import 'package:authdemo/Domain/Repository/UserRepository.dart';


UserDatabase getUserDatabase(){
  return UserDatabase.getUserDatabaseInstance();
}

FirebaseUserDatabaseRemoteDataSource getFirebaseUserDatabaseRemoteDataSource(UserDatabase userDatabase){
  return FirebaseUserDatabaseRemoteDataSourceImpl(userDatabase: userDatabase);
}
FirebaseUserAuth getFirebaseUserAuth(){
  return FirebaseUserAuth.getFirebaseAuthInstance();
}

FirebaseAuthRemoteDataSource getFirebaseAuthRemoteDataSource(FirebaseUserAuth firebaseUserAuth){
  return FirebaseAuthRemoteDataSourceImpl(firebaseUserAuth: firebaseUserAuth);
}

UserRepository getUserRepo(FirebaseAuthRemoteDataSource firebaseAuthRemoteDataSource , FirebaseUserDatabaseRemoteDataSource firebaseUserDatabaseRemoteDataSource){
  return UserRepositoryImpl(firebaseAuthRemoteDataSource: firebaseAuthRemoteDataSource, firebaseUserDatabaseRemoteDataSource: firebaseUserDatabaseRemoteDataSource);
}

UserRepository injectUserRepo(){
  return getUserRepo(getFirebaseAuthRemoteDataSource(getFirebaseUserAuth()), getFirebaseUserDatabaseRemoteDataSource(getUserDatabase()));
}