import 'package:authdemo/Core/Base/BaseStete.dart';
import 'package:authdemo/Domain/UseCase/CreateUserUseCase.dart';
import 'package:authdemo/Presintation/UI/Home/HomeView.dart';
import 'package:authdemo/Presintation/UI/Login/LoginView.dart';
import 'package:authdemo/Presintation/UI/Register/RegisterNavigator.dart';
import 'package:authdemo/Presintation/UI/Register/RegisterViewModel.dart';
import 'package:flutter/material.dart';

import '../../../Data/DataSource/FirebaseUserDatabaseRemoteDataSourceImpl.dart';

class RegisterView extends StatefulWidget {
  static const routeName = "Register";
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends BaseState<RegisterView , RegisterViewModel> implements RegisterNavigator {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:const Text("Register"),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Form(
              key: viewModel!.formKey,
              child: Column(
                children: [
                  TextFormField(
                    controller: viewModel!.nameController,
                    decoration: const InputDecoration(
                      label: Text("name"),
                    ),
                    validator: (value) => viewModel!.nameValidation(value!),
                  ),
                  const SizedBox(height: 20,),
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
                  ElevatedButton(onPressed: viewModel!.register,
                      child: const Padding(
                        padding:  EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [Text("Register")],
                        ),
                      )
                  ),
                ],
              )
            )
          ],
        ),
      ),
    );
  }

  @override
  RegisterViewModel initViewModel() {
    return RegisterViewModel(
      useCase: injectCreateUserUseCase()
    );
  }


  @override
  goToLoginScreen() {
    Navigator.pushReplacementNamed(context, LoginView.routeName);
  }
}
