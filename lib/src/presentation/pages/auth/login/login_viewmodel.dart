import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_state.dart';
import 'package:flutter_application_viaje/src/presentation/utils/validation_item.dart';

class LoginViewModel extends ChangeNotifier {
  LoginState _state=LoginState();

  LoginState get state => _state;

  void changeEmail(String value) {
    _state = _state.copyWith(email: ValidationItem(value: value));
  }

  void changePassword(String value){
    _state = _state.copyWith(password: ValidationItem(value: value));
  }

  void login(){
    print('Email: ${_state.email}');
    print('Password: ${_state.password}');
  }
}