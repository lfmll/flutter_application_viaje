import 'package:flutter/material.dart' show BuildContext, ColorScheme, Colors, MaterialApp, StatelessWidget, ThemeData, Widget, runApp;
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_page.dart';
import 'package:flutter_application_viaje/src/presentation/pages/auth/login/login_viewmodel.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context)=> LoginViewModel())
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
          'login':(BuildContext context) => LoginPage()
        },
      ),
    );
  }
}

