import 'package:authdemo/Data/Firebase/UserDatabase.dart';
import 'package:authdemo/Data/Model/Users/UserDTO.dart';
import 'package:authdemo/Domain/DataSource/FirebaseUserDatabaseRemoteDataSource.dart';

class FirebaseUserDatabaseRemoteDataSourceImpl implements FirebaseUserDatabaseRemoteDataSource{

  UserDatabase userDatabase;
  FirebaseUserDatabaseRemoteDataSourceImpl({required this.userDatabase});

  @override
  Future<String> createUser({required UserDTO user, required String uid}) async{
    try{
      var response = await userDatabase.createUser(user: user, uid: uid);
      return response;
    }catch(e){
      return e.toString();
    }
  }

}