import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/widgets/login_content.dart';
import 'package:flutter_application_viaje/src/presentation/utils/base_color.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';

class LoginPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context){
    LoginViewModel vm = Provider.of<LoginViewModel>(context);

    return Scaffold(
      backgroundColor: BACKGROUND_COLOR,
      body: LoginContent(vm),
    );
  }

  
}