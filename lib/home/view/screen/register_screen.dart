// home/view/screen/register_screen.dart
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pos_sibayar/home/bloc/home_bloc.dart';
import 'package:pos_sibayar/home/view/widgets/register_form.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => HomeBloc(),
        child: RegisterForm(),
      ),
    );
  }
}
