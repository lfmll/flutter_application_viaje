import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/register/register_state.dart';
import 'package:flutter_application_viaje/src/presentation/utils/validation_item.dart';

class RegisterViewModel extends ChangeNotifier{
  RegisterState _state = RegisterState();
  RegisterState get state => _state;

  register() {
    if (_state.isValid()) {
      print('Email del formulario: ${_state.email.value}');
      print('Username del formulario: ${_state.username.value}');
      print('Password del formulario: ${_state.password.value}');
      print('C. password del formulario: ${_state.confirmPassword.value}');
    } else {
      print('Formulario no valido');      
    }
  }
  changeEmail(String value) {
    final bool emailFormatValid = RegExp(r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?$")
                                  .hasMatch(value);
    if (!emailFormatValid) {
      _state = _state.copyWith(email: ValidationItem(error: 'No tiene el formato correcto de correo'));
    } else if (value.length >=6) {
      _state = _state.copyWith(email: ValidationItem(value: value, error: '')); 
    } else {
      _state = _state.copyWith(email: ValidationItem(error: 'Este campo no puede estar vacio'));      
    }
    notifyListeners(); 
  }

  changeUsername(String value) {
    if (value.length >= 3) {
      _state = _state.copyWith(username: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(username: ValidationItem(error: 'Al menos 3 caracteres'));
    }
    notifyListeners();
  }

  changePassword(String value) {
    if (value.length >= 6) {
      _state = _state.copyWith(password: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(password: ValidationItem(error: 'Al menos 6 caracteres'));
    }
    notifyListeners();
  }

  changeConfirmPassword(String value) {
    if (value.length >= 6) {
      _state = _state.copyWith(confirmPassword: ValidationItem(value: value, error: ''));
    } else {
      _state = _state.copyWith(confirmPassword: ValidationItem(error: 'Al menos 6 caracteres'));
    }
    notifyListeners();
  }
}