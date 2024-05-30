import 'package:book_it/src/features/Pages/home/Home/pages/home_page.dart';
import 'package:book_it/src/features/Widgets/inputs/inputs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String? _selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset(
              'assets/images/bsb.jpeg',
              fit: BoxFit.cover,
            ),
          ),
          Positioned.fill(
            child: Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                children: [
                  Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.w),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(),
                        ),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 10.h),
                              Text(
                                "book ",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                  fontFamily: "Poppins",
                                  letterSpacing: 0.05,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "it",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 17.sp,
                                  fontFamily: "Poppins",
                                  letterSpacing: 0.05,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Plus tard',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10.sp,
                                fontFamily: "Poppins",
                                fontWeight: FontWeight.w500,
                              ),
                              textAlign: TextAlign.right,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(padding: EdgeInsets.all(4.w)),
                        Text(
                          "Inscrivez-vous pour réserver",
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w600,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          "Profitez d'offres exclusives, d'offres exclusives\n et bien plus encore.",
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontFamily: "Poppins",
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 3.h),
                        Row(
                          children: [
                            SizedBox(width: 5.w),
                            Text(
                              'Numéro mobile',
                              style: TextStyle(
                                fontSize: 12.sp,
                                color: Colors.white,
                                fontFamily: "Cabin",
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 0.5.h),
                        Row(
                          children: [
                            SizedBox(width: 5.w),
                            Container(
                              height: 13.w,
                              width: 17.w,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 2.w, vertical: 1.h),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1.h),
                              ),
                              child: InputDecorator(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Image.asset(
                                        'assets/icons/ci.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                      Image.asset(
                                        'assets/icons/bk.png',
                                        width: 24,
                                        height: 24,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(width: 1.w),
                            Container(
                              height: 20.w,
                              width: 63.w,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 5.w, vertical: 2.h),
                              child: SizedBox(
                                width: 67.w,
                                height: 8.h,
                                child: const InputText(
                                  hintText: '+225  0858448484',
                                  suffixIcon: Padding(
                                    padding: EdgeInsets.all(0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Center(
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.pushReplacement(
                                  context,
                                  PageRouteBuilder(
                                    transitionDuration:
                                        const Duration(milliseconds: 300),
                                    pageBuilder: (_, __, ___) =>
                                        const HomePage(),
                                    transitionsBuilder:
                                        (_, animation, __, child) {
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
                                primary: Colors.white,
                                padding: EdgeInsets.symmetric(
                                    vertical: 1.5.h, horizontal: 31.w),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(1.h),
                                ),
                              ),
                              child: Text(
                                "Continuer",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: "Poppins",
                                  fontWeight: FontWeight.w500,
                                  height: 1.3,
                                ),
                              )),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Text.rich(
                    TextSpan(
                      text: "En vous connectant, vous acceptez nos ",
                      style: TextStyle(
                        fontSize: 8.5.sp,
                        color: Colors.white,
                        fontWeight: FontWeight.w400,
                        fontFamily: "Poppins",
                      ),
                      children: <TextSpan>[
                        TextSpan(
                          text: "Conditions générales ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8.5.sp,
                            fontFamily: "Poppins",
                            color: const Color(0xFFEA7C17),
                          ),
                        ),
                        TextSpan(
                          text: "et notre ",
                          style: TextStyle(
                            fontSize: 8.5.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontFamily: "Poppins",
                          ),
                        ),
                        TextSpan(
                          text: "Politique de confidentialité.",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 8.5.sp,
                            fontFamily: "Poppins",
                            color: const Color(0xFFEA7C17),
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
