import 'package:authdemo/Presintation/UI/Home/HomeView.dart';
import 'package:authdemo/Presintation/UI/Login/LoginView.dart';
import 'package:authdemo/Presintation/UI/Register/RegisterView.dart';
import 'package:authdemo/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main()async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      routes: {
        LoginView.routeName: (_) => LoginView(),
        RegisterView.routeName :(_) => RegisterView(),
        HomeView.routeName:(_) => HomeView()
      },
      initialRoute: LoginView.routeName,
    );
  }
}
