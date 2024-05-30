import 'package:book_it/src/features/Pages/Favoris/Pages/favoris.dart';
import 'package:book_it/src/features/Pages/Login/pages/login.dart';
import 'package:book_it/src/features/Pages/Reservation/pages/pages.dart';
import 'package:book_it/src/features/Pages/SplashPage/pages/splash_page.dart';
import 'package:book_it/src/features/Pages/home/Home/pages/home_page.dart';
import 'package:book_it/src/features/Pages/profile/pages/pages.dart';
import 'package:book_it/src/features/Pages/registration/pages/pages.dart';


import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'src/features/Pages/Reservation/pages/reservation_page.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
          home: SplashPage(),
        );
      },
    );
  }
}
