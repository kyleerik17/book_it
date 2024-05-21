import 'package:book_it/src/features/Widgets/inputs/inputs.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Positioned.fill(
        child: Image.asset(
          'assets/images/ins.png',
          fit: BoxFit.cover,
        ),
      ),
      Positioned.fill(
        child: Padding(
          padding: EdgeInsets.all(4.w),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 8.w),
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
              SizedBox(height: 25.h),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
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
                      "Profitez d'offres exclusives, d'offres exclusives et bien plus encore.",
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
                          height: 5.h,
                          width: 14.w,
                          padding: EdgeInsets.symmetric(
                              horizontal: 0.5.w, vertical: 1.h),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                          child: Image.asset(
                            'assets/icons/ci.png',
                          ),
                        ),
                        SizedBox(width: 1.5.w),
                        Flexible(
                          child: SizedBox(
                            width: 67.w,
                            height: 5.h,
                            child: InputText(
                              hintText: "0958 585 8594",
                              prefixText: "+225 ",
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(0),
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
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 2.w),
                    Center(
                      child: ElevatedButton(
                        onPressed: () {
                          // Navigator.pushReplacement(
                          //   context,
                          //   PageRouteBuilder(
                          //     transitionDuration: const Duration(milliseconds: 300),
                          //     pageBuilder: (_, __, ___) =>
                          //         const RegistrationPage(),
                          //     transitionsBuilder: (_, animation, __, child) {
                          //       return SlideTransition(
                          //         position: Tween<Offset>(
                          //           begin: const Offset(1.0, 0.0),
                          //           end: Offset.zero,
                          //         ).animate(animation),
                          //         child: child,
                          //       );
                          //     },
                          //   ),
                          // );
                        },
                        style: ElevatedButton.styleFrom(
                          primary: Colors.white,
                          padding: EdgeInsets.symmetric(
                              vertical: 1.5.h, horizontal: 15.5.h),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(1.h),
                          ),
                        ),
                        child: Text(
                          "Continuer",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12.sp,
                              fontFamily: "Cabin",
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const Spacer(),
              Text.rich(
                TextSpan(
                  text: "En continuant, vous acceptez ",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.white,
                    fontFamily: "Cabin",
                  ),
                  children: const <TextSpan>[
                    TextSpan(
                      text: "nos conditions générales d'utilisations",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFEA7C17),
                      ),
                    ),
                    TextSpan(
                      text: ".",
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      )
    ]));
  }
}

class InputText extends StatelessWidget {
  final String hintText;
  final String prefixText;
  final Widget suffixIcon;
  final TextCapitalization capitalization;

  const InputText({
    required this.hintText,
    required this.prefixText,
    required this.suffixIcon,
    required this.capitalization,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.black),
        prefixText: prefixText,
        suffixIcon: suffixIcon,
        prefixStyle: const TextStyle(color: Colors.black),
        filled: true,
        fillColor: Colors.white,
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(1.5.w),
          borderSide: BorderSide.none,
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 2.w),
      ),
      textAlignVertical: TextAlignVertical.center,
      textCapitalization: capitalization,
    );
  }
}
