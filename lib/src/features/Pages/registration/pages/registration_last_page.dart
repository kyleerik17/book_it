import 'package:book_it/src/features/Pages/Onboarding/pages/onboarding3_page.dart';
import 'package:book_it/src/features/Pages/registration/pages/registration-auth_page.dart';
import 'package:book_it/src/features/Widgets/buttons/buttons.dart';
import 'package:book_it/src/features/Widgets/inputs/inputs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../registration.dart';

class RegistrationLastPage extends StatelessWidget {
  const RegistrationLastPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                          pageBuilder: (_, __, ___) =>
                              const RegistrationAuthPage(),
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
                    SizedBox(height: 4.h),
                    Image.asset(
                      'assets/icons/mb.png',
                      width: 10.w,
                      height: 10.h,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Entrez votre numéro mobile',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontFamily: "Cabin",
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 3.h),
                    Text(
                      'Numéro mobile',
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontFamily: "Cabin",
                      ),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(height: 1.h),
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
                    SizedBox(height: 3.h),
                    Text.rich(
                      TextSpan(
                        text: "En continuant, vous acceptez ",
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Cabin",
                        ),
                        children: const <TextSpan>[
                          TextSpan(
                            text: "nos conditions générales d'utilisations",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          TextSpan(
                            text: ".",
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 32.h),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              pageBuilder: (_, __, ___) =>
                                  const RegistrationCongratulationPage(),
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
                          primary: const Color(0xFFEA7C17),
                          padding: EdgeInsets.symmetric(
                              vertical: 1.5.h, horizontal: 14.h),
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
                    SizedBox(height: 2.h),
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
