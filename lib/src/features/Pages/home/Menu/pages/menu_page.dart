import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:book_it/src/features/Pages/profile/pages/pages.dart';
import 'package:gap/gap.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        child: Container(
          color: const Color(0xFFEA7C17),
          child: ListView(
            children: [
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "book ",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 30.sp,
                        fontFamily: "Poppins",
                        letterSpacing: 0.9,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "it",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 30.sp,
                        fontFamily: "Poppins",
                        letterSpacing: 0.9,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(9.w),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          const Icon(Icons.person, color: Colors.white),
                          SizedBox(width: 4.w),
                          const Text(
                            'Profil',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                              fontFamily: "Cabin",
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4.h),
                      Row(
                        children: [
                          const Icon(Icons.settings, color: Colors.white),
                          SizedBox(width: 4.w),
                          const Text(
                            'Paramètres',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Gap(105.w),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/icons/insta.png',
                    color: Colors.white,
                  ),
                  Gap(8.w),
                  Image.asset(
                    'assets/icons/fb.png',
                    color: Colors.white,
                  ),
                  Gap(8.w),
                  Image.asset(
                    'assets/icons/tt.png',
                    color: Colors.white,
                  ),
                  Gap(8.w),
                  Image.asset(
                    'assets/icons/lg.png',
                    color: Colors.white,
                  ),
                ],
              ),
              Gap(30.w),
              Center(
                child: Text(
                  'À Propos Du Développeur',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 4.w,
                    fontWeight: FontWeight.w400,
                    fontFamily: "Cabin",
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
