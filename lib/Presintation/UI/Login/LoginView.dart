import 'package:authdemo/Core/Base/BaseStete.dart';
import 'package:authdemo/Domain/UseCase/LoginUserUseCase.dart';
import 'package:authdemo/Presintation/UI/Home/HomeView.dart';
import 'package:authdemo/Presintation/UI/Login/LoginNavigator.dart';
import 'package:authdemo/Presintation/UI/Login/LoginViewModel.dart';
import 'package:authdemo/Presintation/UI/Register/RegisterView.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  static const String routeName = "login";
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends BaseState<LoginView , LoginViewModel> implements LoginNavigator{

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => viewModel,
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Login"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Form(
                key: viewModel!.formKey,
                child: Column(
                  children: [
                    TextFormField(
                      controller: viewModel!.emailController,
                      decoration: const InputDecoration(
                        label: Text("email"),
                      ),
                      validator: (value) => viewModel!.emailValidation(value!),
                    ),
                    const SizedBox(height: 20,),
                    TextFormField(
                      controller: viewModel!.passwordController,
                      decoration: const InputDecoration(
                        label: Text("password"),
                      ),
                      validator: (value) => viewModel!.passwordValidation(value!),
                    ),
                    const SizedBox(height: 20,),
                    ElevatedButton(onPressed: (){
                      viewModel!.login();
                    },
                        child: const Padding(
                          padding:  EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [Text("Login")],
                          ),
                        )
                    ),
                    TextButton(
                      onPressed: viewModel!.goToRegisterScreen,
                      child:const Text("Create Account")
                    )
                  ],
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  goToRegisterScreen() {
    Navigator.pushNamed(context, RegisterView.routeName);
  }

  @override
  LoginViewModel initViewModel() {
    return LoginViewModel(loginUserUseCase: injectLoginUserUseCase());
  }

  @override
  goToHomeScreen() {
    Navigator.pushReplacementNamed(context, HomeView.routeName);
  }
}
