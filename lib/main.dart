import 'dart:async';
import './splashscreen1.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'page/pages.dart';
import 'login.dart';
import './authentication_service.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(new MaterialApp(
    home: new Bridge(),
    routes: <String, WidgetBuilder>{
      '/splashOne': (BuildContext context) => new SplashScreenOne()
    },
  ));
}

class MainApp extends StatefulWidget {
  @override
  _MainAppState createState() => new _MainAppState();
}

class _MainAppState extends State<MainApp> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    return new Timer(_duration, navigationPage);
  }

  void navigationPage() {
    Navigator.of(context).pushReplacementNamed('/splashOne');
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: Colors.blue[900],
        child: Center(
          child: Container(
              child: Image.asset(
            "assets/images/logo.png",
            width: 270,
            height: 270,
          )),
        ),
      ),
    );
  }
}

class Bridge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthenticationService>(
          create: (_) => AuthenticationService(FirebaseAuth.instance),
        ),
        StreamProvider(
          create: (context) =>
              context.read<AuthenticationService>().authStateChanges,
        )
      ],
      child: MaterialApp(
        // title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: AuthenticationWrapper(),
      ),
    );
  }
}

class AuthenticationWrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final firebaseUser = context.watch<User>();

    if (firebaseUser != null) {
      print('Anda berhasil login.');
      return BerandaPage();
    }
    print('Anda harus login dulu.');
    return Login();
  }
}
