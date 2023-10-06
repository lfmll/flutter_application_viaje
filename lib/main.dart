import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart' show BuildContext, ColorScheme, Colors, MaterialApp, StatelessWidget, ThemeData, Widget, WidgetsFlutterBinding, runApp;
import 'package:flutter_application_viaje/injection.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_page.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/register/register_page.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/register/register_viewmodel.dart';
import 'package:provider/provider.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependecies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LoginViewModel(locator<FirebaseAuth>())),
        ChangeNotifierProvider(create: (context)=> RegisterViewModel())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        // debugShowCheckedModeBanner: false,
        initialRoute: 'login',
        routes: {
          'login':(BuildContext context) => LoginPage(),
          'register' :(BuildContext context) => RegisterPage()
        },
      ),
    );
  }
}

