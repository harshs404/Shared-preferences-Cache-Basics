import 'package:basicappflutter/app/providers/providers.dart';
import 'package:basicappflutter/meta/views/Login_View/loginView.dart';
import 'package:basicappflutter/meta/views/Splash_View/Splash_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      child: MaterialApp(
        theme: ThemeData.dark(),
        home: SplashView(),
        debugShowCheckedModeBanner: false,
      ),
      providers: providers,
    );
  }
}


// shared preferences is a key value database, we can use it for caching under our login form data
// here we use shared preferences to store login form data, also by the help of provider
// we will create a new notifier for  login form

//we have used multiprovider for multiple providers... now we will create 3 views under our views....SplashView,HomeView and LoginView

//firstly we will be rendering our data from splashView...then we'll be deciding whether our cache is empty or not....if cache will be empty we send our user to LoginView else we'll send him to HomeView