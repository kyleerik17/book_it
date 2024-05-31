import 'package:book_it/src/features/Pages/Onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashPageState createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animationFontSize;
  late Animation<double> _animationRotation;
  late Animation<Offset> _animationSlide;
  late Animation<Offset> _animationSlide2;
  late Animation<Offset> _animationTextSlide;
  late Animation<Offset> _animationTextSlide2;
  late Animation<Offset> _animationCircleSlide;
  late Animation<double> _animationCircleSize;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    );

    _animationFontSize = Tween<double>(
      begin: 15.sp,
      end: 28.sp,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.1,
        0.2,
      ),
    ));

    _animationRotation = TweenSequence<double>([
      TweenSequenceItem(tween: ConstantTween(0.0), weight: 1),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: -0.5 * 3.14), weight: 1),
      TweenSequenceItem(tween: ConstantTween(-0.5 * 3.14), weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: -0.5 * 3.14, end: -3.14), weight: 1),
      TweenSequenceItem(tween: ConstantTween(-3.14), weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: -3.14, end: -1.5 * 3.14), weight: 1),
      TweenSequenceItem(tween: ConstantTween(-1.5 * 3.14), weight: 1),
      TweenSequenceItem(
          tween: Tween(begin: -1.5 * 3.14, end: -2 * 3.14), weight: 1),
    ]).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.2,
        0.6,
      ),
    ));

    _animationSlide = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, 30),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.6,
        1.0,
      ),
    ));

    _animationSlide2 = Tween<Offset>(
      begin: const Offset(0.0, 50.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.6,
        1.0,
      ),
    ));

    _animationTextSlide = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: const Offset(0.0, 0.3),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.5,
        1.0,
      ),
    ));

    _animationTextSlide2 = Tween<Offset>(
      begin: const Offset(0.3, 0.0),
      end: const Offset(0.0, 0.0),
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.8,
        1.0,
      ),
    ));

    _animationCircleSlide = Tween<Offset>(
      begin: const Offset(0.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.8,
        1.0,
      ),
    ));

    _animationCircleSize = Tween<double>(
      begin: 3.h,
      end: 1000.h,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: const Interval(
        0.7,
        1.0,
      ),
    ));

    Future.delayed(const Duration(seconds: 1), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Sizer(
        builder: (context, orientation, deviceType) {
          return Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                if (_controller.value > 0.9) {
                  Future.delayed(const Duration(seconds: 1), () {
                    Navigator.push(
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
                  });
                }
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    if (_controller.value > 0.6)
                      SlideTransition(
                        position: _animationCircleSlide,
                        child: Container(
                          width: _animationCircleSize.value,
                          height: _animationCircleSize.value,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              _controller.value > 0.7 ? 0 : 2.h,
                            ),
                            color: const Color(0xFFEA7C17),
                          ),
                        ),
                      ),
                    Transform.rotate(
                      angle: _animationRotation.value,
                      child: SlideTransition(
                        position: _animationSlide,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SlideTransition(
                              position: _animationTextSlide,
                              child: Text(
                                "book ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: _animationFontSize.value,
                                  fontFamily: "Poppins",
                                  letterSpacing: 0.05,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            SlideTransition(
                              position: _animationTextSlide,
                              child: Text(
                                "it",
                                style: TextStyle(
                                  color: const Color(0xFFEA7C17),
                                  fontWeight: FontWeight.w600,
                                  fontSize: _animationFontSize.value,
                                  fontFamily: "Poppins",
                                  letterSpacing: 0.05,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SlideTransition(
                      position: _animationSlide2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SlideTransition(
                            position: _animationTextSlide2,
                            child: Text(
                              "book ",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 27.sp,
                                fontFamily: "Poppins",
                                letterSpacing: 0.05,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                          SlideTransition(
                            position: _animationTextSlide2,
                            child: Text(
                              "it",
                              style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w600,
                                fontSize: 27.sp,
                                fontFamily: "Poppins",
                                letterSpacing: 0.05,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          );
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
