import 'package:book_it/gen/assets.gen.dart';
import 'package:book_it/src/features/Pages/registration/pages/pages.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

List<String> titles = [
  "Réservez vos activités sportives en un clic !",
  "Découvrez le terrain idéal pour votre prochaine session !",
  "Réservez votre créneau sportif en toute simplicité !",
  "Gérez vos réservations et vos préférences en toute facilité !",
];
List<Widget> images = [
  Assets.images.onboarding1.image(),
  Assets.images.Onboarding2.image(),
  Assets.images.Onboarding3.image(),
  Assets.images.Onboarding4.image(),
];

List<String> descriptions = [
  "Des espaces sportifs près de chez vous, disponibles \nà tout moment.Simplifiez vous la vie avec Bookit !",
  "Obtenez toutes les informations nécessaires et réservez en quelques clics.",
  "Choisissez votre horaire, payez en ligne et recevez une confirmation instantanée.",
  "Suivez votre historique, modifiez vos informations et profitez de programmes de fidélité exclusifs.",
];

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    double currentProgress = ((currentPage + 1) / images.length);
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 10.w,
                child: Stack(
                  children: [
                    Positioned(
                      top: 0,
                      left: 0,
                      bottom: 0,
                      child: InkWell(
                        onTap: () {
                          if (currentPage > 0) {
                            setState(() {
                              currentPage--;
                            });
                          }
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
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "book ",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp,
                              fontFamily: "Poppins",
                              letterSpacing: 0.05,
                            ),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "it",
                            style: TextStyle(
                              color: const Color(0xFFEA7C17),
                              fontWeight: FontWeight.w600,
                              fontSize: 28.sp,
                              fontFamily: "Poppins",
                              letterSpacing: 0.05,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.w),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(4.w),
                  child: LinearProgressIndicator(
                    backgroundColor: const Color(0xff373737).withOpacity(0.3),
                    value: currentProgress,
                    valueColor: const AlwaysStoppedAnimation(Colors.black),
                    minHeight: 1.w,
                  ),
                ),
              ),
              SizedBox(height: 2.h),
              Text(
                titles[currentPage],
                style: TextStyle(
                  fontSize: 26.sp,
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 5.w),
              SizedBox(width: 60.w, height: 60.w, child: images[currentPage]),
              SizedBox(height: 2.h),
              Padding(
                padding: const EdgeInsets.all(4),
                child: Text(
                  descriptions[currentPage],
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w400,
                    height: 1.5,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const Spacer(),
              if (currentPage < 3)
                InkWell(
                  child: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 8.w,
                  ),
                  onTap: () {
                    setState(() {
                      currentPage++;
                    });
                  },
                ),
              if (currentPage == 3)
                TextButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return Dialog(
                          backgroundColor:
                              const Color(0x545458).withOpacity(0.65),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.5.h),
                          ),
                          child: Container(
                            padding: EdgeInsets.all(4.w),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "Voulez-vous activer les notifications ?",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.sp,
                                    fontFamily: "Cabin",
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textAlign: TextAlign.center,
                                ),
                                SizedBox(height: 2.h),
                                Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.pushReplacement(
                                          context,
                                          PageRouteBuilder(
                                            transitionDuration: const Duration(
                                                milliseconds: 300),
                                            pageBuilder: (_, __, ___) =>
                                                const RegistrationPage(),
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
                                      child: Text(
                                        "Continuer",
                                        style: TextStyle(
                                          color: Colors.blue,
                                          fontSize: 14.sp,
                                          fontFamily: "Cabin",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                    SizedBox(height: 1.h),
                                    TextButton(
                                      onPressed: () {},
                                      child: Text(
                                        "Annuler",
                                        style: TextStyle(
                                          color: Colors.red,
                                          fontSize: 14.sp,
                                          fontFamily: "Cabin",
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEA7C17),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 13.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(1.h),
                    ),
                  ),
                  child: Text(
                    "Démarrer",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12.sp,
                      fontFamily: "Cabin",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              const Spacer(),
            ],
          ),
        )));
  }
}
