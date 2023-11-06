import 'package:authdemo/Data/Firebase/FirebaseAuth.dart';
import 'package:authdemo/Data/Model/Users/UserDTO.dart';
import 'package:authdemo/Domain/DataSource/FirebaseAuthRemoteDataSource.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthRemoteDataSourceImpl implements FirebaseAuthRemoteDataSource{

  FirebaseUserAuth firebaseUserAuth ;
  FirebaseAuthRemoteDataSourceImpl({required this.firebaseUserAuth});

  @override
  Future<User> createUser({required UserDTO user}) async{
    try{
      var response = await firebaseUserAuth.createUser(user: user);
      return response;
    }catch(e){
      throw Exception();
    }
  }

  @override
  Future<User> login({required String email, required String password}) async{
    try{
      var response = await firebaseUserAuth.login(email: email ,password: password);
      return response;
    }catch(e){
      throw Exception();
    }
  }

}