import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/utils/base_color.dart';
import 'package:flutter_application_viaje/src/presentation/widgets/default_textfield.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({super.key});

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
        Container(
          margin: EdgeInsets.symmetric(horizontal: 15),
          child: DefaultTextField(
            label: 'Nombre de Usuario',
            icon: Icons.person_2_outlined,
            onChanged: (value) {},
            ),
          ),  
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: DefaultTextField(
              label: 'Correo Electronico',
              icon: Icons.email_outlined,
              onChanged: (value) {}
            ),              
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: DefaultTextField(
              label: 'Password',
              icon: Icons.lock_outline,
              onChanged: (value) {}
            ),              
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 15),
            child: DefaultTextField(
              label: 'Confirmar Password',
              icon: Icons.lock_outline,
              onChanged: (value) {}
            ),              
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
          child: ElevatedButton(
            onPressed: () {
              
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