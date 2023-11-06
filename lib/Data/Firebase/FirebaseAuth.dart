import 'package:authdemo/Data/Model/Users/UserDTO.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseUserAuth {

  // singleton pattern
  FirebaseUserAuth._();
  static FirebaseUserAuth? instance;
  static FirebaseUserAuth getFirebaseAuthInstance(){
    return instance ??= FirebaseUserAuth._();
  }

  var firebaseAuth = FirebaseAuth.instance;

  Future<User> createUser({required UserDTO user})async{
    var response = await firebaseAuth.createUserWithEmailAndPassword(email: user.email, password: user.password);
    response.user!.updateDisplayName(user.name);
    return response.user!;
  }

  Future<User> login({required String email , required String password})async{
    var response = await firebaseAuth.signInWithEmailAndPassword(email: email, password: password);
    return response.user!;
  }
}