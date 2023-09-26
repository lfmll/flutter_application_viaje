import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/register/widgets/register_content.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RegisterContent(),
    );
  }
}