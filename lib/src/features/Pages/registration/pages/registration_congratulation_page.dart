import 'package:book_it/src/features/Pages/Onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sizer/sizer.dart';

class RegistrationCongratulationPage extends ConsumerStatefulWidget {
  const RegistrationCongratulationPage({Key? key}) : super(key: key);

  @override
  _RegisterCongratulationPageState createState() =>
      _RegisterCongratulationPageState();
}

class _RegisterCongratulationPageState
    extends ConsumerState<RegistrationCongratulationPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/bg.jpg'), fit: BoxFit.fill),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "book ",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 55.sp,
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
                            fontSize: 55.sp,
                            fontFamily: "Inter",
                            letterSpacing: 0.05,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 12.h),
                Text(
                  "    vos activités sportives en un clic !",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 11.sp,
                    fontFamily: "Poppins",
                    letterSpacing: 0.05,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 5.h,
            child: Center(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (_, __, ___) => const OnboardingPage(),
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
                  padding:
                      EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 14.h),
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
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
