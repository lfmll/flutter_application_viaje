import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/register/register_viewmodel.dart';
import 'package:flutter_application_viaje/src/presentation/utils/base_color.dart';
import 'package:flutter_application_viaje/src/presentation/widgets/default_textfield.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:provider/provider.dart';

class RegisterContent extends StatelessWidget {
  RegisterViewModel vm;
  RegisterContent(this.vm);

  @override
  Widget build(BuildContext context) {
    
    return Column(      
      children: [
        ClipPath(
          clipper: OvalBottomBorderClipper(),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            color: BASE_COLOR,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Registrate',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold
                  ),
                ),
              ],                
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              Text(
                'Continua con el',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24
                ),  
              ),
              Text(
                'Registro',
                style:  TextStyle(
                  color: Colors.white,
                  fontSize: 26
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(            
            onChanged: (value) {
              vm.changeUsername(value);
            },
            error: vm.state.username.error,
            label: 'Nombre de Usuario',
            icon: Icons.person_2_outlined,            
            ),
          ),  
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: DefaultTextField(
              label: 'Correo Electronico',
              icon: Icons.email_outlined,
              error: vm.state.email.error,
              onChanged: (value) {
                vm.changeEmail(value);
              }
            ),              
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: DefaultTextField(
              label: 'Password',
              icon: Icons.lock_outline,
              obscureText: true,
              error: vm.state.password.error,
              onChanged: (value) {
                vm.changePassword(value);
              }
            ),              
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: DefaultTextField(
              label: 'Confirmar Password',
              obscureText: true,
              icon: Icons.lock_outline,
              error: vm.state.confirmPassword.error,
              onChanged: (value) {
                vm.changeConfirmPassword(value);
              }
            ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: ElevatedButton(
            onPressed: () {
              vm.register();              
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: BASE_COLOR
            ),
            child: Text(
              'Registrarse',
              style: TextStyle(color: Colors.black),)),
        )
      ],
    );
  }
}