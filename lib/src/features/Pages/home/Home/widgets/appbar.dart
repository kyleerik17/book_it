import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:book_it/src/features/Pages/home/Menu/pages/menu.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({Key? key}) : super(key: key);

  @override
  _AppBarWidgetState createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController = AnimationController(
      vsync: this, // Provide the TickerProvider
      duration: const Duration(milliseconds: 300),
    );
  }

  @override
  void dispose() {
    _animationController
        .dispose(); // Dispose the animation controller to free up resources
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFFFFFFFF),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 1.h),
        child: Row(
          children: [
            SizedBox(width: 4.w),
            GestureDetector(
              onTap: () {
                showGeneralDialog(
                  context: context,
                  barrierDismissible: true,
                  barrierLabel: MaterialLocalizations.of(context)
                      .modalBarrierDismissLabel,
                  barrierColor: Colors.black.withOpacity(0.5),
                  transitionDuration: const Duration(milliseconds: 200),
                  pageBuilder: (BuildContext buildContext,
                      Animation<double> animation,
                      Animation<double> secondaryAnimation) {
                    return FractionallySizedBox(
                      widthFactor: 0.7,
                      heightFactor: 1,
                      alignment: Alignment.centerLeft,
                      child: SlideTransition(
                        position: Tween<Offset>(
                          begin: const Offset(-1.0, 0.0),
                          end: Offset.zero,
                        ).animate(animation),
                        child: Material(
                          type: MaterialType.transparency,
                          child: Container(
                            color: Colors.white,
                            child:
                                MenuPage(), // Replace MenuPage with your content
                          ),
                        ),
                      ),
                    );
                  },
                );
              },
              child: Image.asset(
                'assets/icons/menu.png',
                color: Colors.black,
              ),
            ),
            SizedBox(width: 20.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "book",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                          fontFamily: "Poppins",
                          letterSpacing: 1,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        "it",
                        style: TextStyle(
                          color: const Color(0xFFEA7C17),
                          fontWeight: FontWeight.w600,
                          fontSize: 30.sp,
                          fontFamily: "Inter",
                          letterSpacing: 1,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(width: 16.w),
            Column(
              children: [
                Image.asset(
                  'assets/icons/pay.png',
                  width: 10.w,
                  height: 6.w,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
