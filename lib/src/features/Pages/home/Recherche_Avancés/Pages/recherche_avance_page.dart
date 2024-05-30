import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RecherchesAvancePage extends StatelessWidget {
  const RecherchesAvancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4.w),
        child: Column(
          children: [
            SizedBox(height: 8.h),
            Row(
              children: [
                Image.asset(
                  'assets/icons/bck.png',
                  width: 5.w,
                ),
                const Expanded(
                  child: Text(
                    'Recherches Avancées',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Poppins',
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 5.h),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF404040),
                padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.5.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/ht.png',
                    color: const Color(0xFFEA7C17),
                  ),
                  SizedBox(width: 3.w),
                  const Expanded(
                    child: Text(
                      "Sélectionner une activité",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/dw.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF404040),
                padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.5.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/cld.png',
                    color: const Color(0xFFEA7C17),
                  ),
                  SizedBox(width: 3.w),
                  const Expanded(
                    child: Text(
                      "Sélectionner une date",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/dw.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 1.h),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: const Color(0xFF404040),
                padding: EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 4.w),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(1.5.h),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/icons/time.png',
                    color: const Color(0xFFEA7C17),
                  ),
                  SizedBox(width: 3.w),
                  const Expanded(
                    child: Text(
                      "Sélectionner un créneau",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                  Image.asset(
                    'assets/icons/dw.png',
                  ),
                ],
              ),
            ),
            SizedBox(height: 3.h),
            Row(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: EdgeInsets.only(left: 2.w),
                  child: Text(
                    'Distance maximale',
                    style: TextStyle(fontSize: 13.sp, fontFamily: 'Poppins'),
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Center(
                  child: TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFEA7C17),
                      padding: EdgeInsets.symmetric(
                          vertical: 1.5.h, horizontal: 20.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(2.h),
                      ),
                    ),
                    child: Text(
                      "Rechercher",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w500,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 2.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
