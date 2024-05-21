import 'package:book_it/src/features/Pages/Onboarding/onboarding.dart';
import 'package:book_it/src/features/Pages/Onboarding/pages/onboarding3_page.dart';
import 'package:book_it/src/features/Pages/registration/pages/registration-auth_page.dart';
import 'package:book_it/src/features/Widgets/buttons/buttons.dart';
import 'package:book_it/src/features/Widgets/inputs/inputs.dart';
import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import '../registration.dart';

class RegistrationPage extends StatelessWidget {
  const RegistrationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          children: [
            SizedBox(height: 6.h),
            Row(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  bottom: 0,
                  child: InkWell(
                    onTap: () {
                      Navigator.pushReplacement(
                        context,
                        PageRouteBuilder(
                          transitionDuration: const Duration(milliseconds: 300),
                          pageBuilder: (_, __, ___) => const OnboardingPage(),
                          transitionsBuilder: (_, animation, __, child) {
                            return SlideTransition(
                              position: Tween<Offset>(
                                begin: const Offset(-1.0, 0.0),
                                end: Offset.zero,
                              ).animate(animation),
                              child: child,
                            );
                          },
                        ),
                      );
                    },
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color(0xFFEBEBEB),
                        shape: BoxShape.circle,
                      ),
                      padding: EdgeInsets.all(2.w),
                      child: Icon(Icons.arrow_back_ios_new, size: 3.w),
                    ),
                  ),
                ),
                SizedBox(width: 9.h),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "book ",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 27.sp,
                          fontFamily: "Poppins",
                          letterSpacing: 0.05,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "it",
                        style: TextStyle(
                          color: Color(0xFFEA7C17),
                          fontWeight: FontWeight.w600,
                          fontSize: 27.sp,
                          fontFamily: "Poppins",
                          letterSpacing: 0.05,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SizedBox(height: 2.h),
                    Image.asset(
                      'assets/images/im.png',
                      width: 137,
                      height: 137,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Inscription',
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontFamily: "Cabin",
                        fontWeight: FontWeight.w400,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 2.h),
                    Text(
                      'Veuillez entrer vos nom(s) et votre prénom(s)',
                      style: TextStyle(
                        fontSize: 11.5.sp,
                        fontFamily: "Cabin",
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.h),
                    Stack(
                      alignment: Alignment.bottomLeft,
                      children: [
                        InputText(
                          hintText: "",
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0.w),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(width: 1.5.h),
                                Image.asset(
                                  'assets/icons/ci.png',
                                  width: 5.w,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  "+225 ",
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Inter",
                                  ),
                                ),
                              ],
                            ),
                          ),
                          suffixIcon: Padding(
                            padding: EdgeInsets.all(0),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SizedBox(width: 1.5.h),
                                Image.asset(
                                  'assets/icons/check.png',
                                  width: 5.w,
                                ),
                              ],
                            ),
                          ),
                          capitalization: TextCapitalization.words,
                        ),
                        Positioned(
                          left: 90,
                          bottom: 15.5,
                          child: Text(
                            "07 444 456 78",
                            style: TextStyle(
                              fontSize: 12.sp,
                              fontFamily: "Cabin",
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    InputText(
                      hintText: "Nom(s)",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: IconButton(
                          icon: Image.asset(
                            'assets/icons/crt.png',
                            width: 5.w,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      capitalization: TextCapitalization.words,
                    ),
                    SizedBox(height: 1.h),
                    InputText(
                      hintText: "Prénom(s)",
                      prefixIcon: Padding(
                        padding: EdgeInsets.all(0),
                        child: IconButton(
                          icon: Image.asset(
                            'assets/icons/crt.png',
                            width: 5.w,
                          ),
                          onPressed: () {},
                        ),
                      ),
                      capitalization: TextCapitalization.words,
                    ),
                    SizedBox(height: 25.h),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              pageBuilder: (_, __, ___) =>
                                  const RegistrationAuthPage(),
                              transitionsBuilder: (_, animation, __, child) {
                                return SlideTransition(
                                  position: Tween<Offset>(
                                    begin: const Offset(1.0, 0.0),
                                    end: Offset.zero,
                                  ).animate(animation),
                                  child: child,
                                );
                              },
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFEA7C17),
                          padding: EdgeInsets.symmetric(
                              vertical: 1.5.h, horizontal: 10.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                        ),
                        child: Text(
                          "Suivant",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontFamily: "Cabin",
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
