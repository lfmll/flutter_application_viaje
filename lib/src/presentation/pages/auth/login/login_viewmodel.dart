import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_state.dart';
import 'package:flutter_application_viaje/src/presentation/utils/validation_item.dart';

class LoginViewModel extends ChangeNotifier {
  LoginState _state=LoginState();

  //Getter
  LoginState get state => _state;

   //Firebase Auth
  FirebaseAuth _firebaseAuth;
  LoginViewModel(this._firebaseAuth);
  
  //Setter  
  void changeEmail(String value) {
    final bool emailFormatValid = RegExp(r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$")
                                  .hasMatch(value);
    if (!emailFormatValid) {
      _state = _state.copyWith(email: ValidationItem(error: 'No tiene el formato correcto de correo'));
    } else if (value.length >=3) {
      _state = _state.copyWith(email: ValidationItem(value: value, error: '')); 
    } else {
      _state = _state.copyWith(email: ValidationItem(error: 'Este campo no puede estar vacio'));      
    }  
    notifyListeners();  
  }

  void changePassword(String value){
    if (value.length >=6) {
      _state = _state.copyWith(password: ValidationItem(value: value, error: ''));      
    } else {
      _state = _state.copyWith(password: ValidationItem(error: 'Se requiere mas de 6 caracteres'));
    }    
    notifyListeners();
  }

  void login() async{
    if (state.isValid()) {
      final data = await _firebaseAuth.signInWithEmailAndPassword(
        email: _state.email.value,
        password: _state.password.value
        );
      print('Data: ${data}');
      print('Email: ${_state.email}');
      print('Password: ${_state.password}');  
    } else {
      print('El formulario no es valido');
    }
    
  }
}