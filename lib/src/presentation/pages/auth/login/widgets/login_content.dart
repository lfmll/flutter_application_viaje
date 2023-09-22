import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:flutter_application_viaje/src/presentation/utils/base_color.dart';
import 'package:flutter_application_viaje/src/presentation/widgets/default_textfield.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class LoginContent extends StatelessWidget {
  LoginViewModel vm;
  LoginContent(this.vm);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,      
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
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
          margin: EdgeInsets.only(left: 15),
          child: Text(
            'Continua con',
            style: TextStyle(
              fontSize: 24,
              color: Colors.white
            ),  
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 15),
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
          )
        ),
        Spacer(),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            onChanged: (value) {
              vm.changeEmail(value);
            },
            label: 'Correo Electronico',
            icon: Icons.email_outlined,
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            onChanged: (value) {
              vm.changeEmail(value);
            },
            label: 'Password',
            icon: Icons.key_outlined,
            ),
          ),
                  
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: ElevatedButton(
            onPressed: () {
              vm.login();
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: BASE_COLOR
            ),
            child: Text(
              'Iniciar Sesion',
              style: TextStyle(color: Colors.black),)),
        ),
        Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(bottom: 40),
          child: Text(
            "No tienes cuenta?",
            style: TextStyle(
              color: Colors.grey, 
              fontSize: 18 
              )
            ),
        )
      ],    
    );
  }
}