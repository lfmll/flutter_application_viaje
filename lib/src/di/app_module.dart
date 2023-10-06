import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_application_viaje/src/di/firebase_service.dart';
import 'package:injectable/injectable.dart';

@module
abstract class AppModule {
  
  @preResolve
  Future<FirebaseService> get firebaseService => FirebaseService.init();

  @injectable
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
}