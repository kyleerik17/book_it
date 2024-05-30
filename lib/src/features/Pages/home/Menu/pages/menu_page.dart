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
        child: Drawer(
          child: Container(
            color: const Color(0xFFEA7C17),
            child: ListView(
              padding: EdgeInsets.all(4.w),
              children: [
                DrawerHeader(
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Book ",
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
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.person, color: Colors.white),
                        title: const Text(
                          'Profil',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              transitionDuration:
                                  const Duration(milliseconds: 300),
                              pageBuilder: (_, __, ___) => const ProfilePage(),
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
                      ),
                      ListTile(
                        leading:
                            const Icon(Icons.settings, color: Colors.white),
                        title: const Text(
                          'Paramètres',
                          style: TextStyle(color: Colors.white),
                        ),
                        onTap: () {},
                      ),
                    ],
                  ),
                ),
                Gap(90.w),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/icons/insta.png',
                      color: Colors.white,
                    ),
                    Gap(10.w),
                    Image.asset(
                      'assets/icons/fb.png',
                      color: Colors.white,
                    ),
                    Gap(10.w),
                    Image.asset(
                      'assets/icons/tt.png',
                      color: Colors.white,
                    ),
                    Gap(10.w),
                    Image.asset(
                      'assets/icons/lg.png',
                      color: Colors.white,
                    ),
                  ],
                ),
                Gap(25.w),
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
      ),
    );
  }
}
