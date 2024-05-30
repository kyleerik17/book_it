import 'package:book_it/src/features/Pages/home/Home/widgets/appbar.dart';
import 'package:book_it/src/features/Pages/home/Home/widgets/bottom.dart';
import 'package:book_it/src/features/Pages/home/Home/widgets/lieu_popu.dart';
import 'package:book_it/src/features/Pages/home/Home/widgets/lieu_proche.dart';
import 'package:book_it/src/features/Pages/home/Home/widgets/search.dart';
import 'package:book_it/src/features/Pages/home/Home/widgets/slider.dart';

import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AppBarWidget(),
          Expanded(
            child: Container(
              color: Color(0xFFF7F8F9),
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 4.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 2.h),
                    const SearchBarWidget(),
                    SizedBox(height: 2.h),
                    const SliderPage(),
                    SizedBox(height: 3.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Près de chez vous",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Voir tout",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  fontFamily: "Cabin",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const LieuxProches(),
                    SizedBox(height: 1.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Populaire en ce moment",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 13.sp,
                                  fontFamily: "Poppins",
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "Voir tout",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 11.sp,
                                  fontFamily: "Cabin",
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    const LieuPopu(),
                    SizedBox(height: 3.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(
        onTap: (int) {},
      ),
      floatingActionButton: SizedBox(
        width: 20.w,
        height: 20.w,
        child: FloatingActionButton(
          onPressed: () {},
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13.w),
          ),
          backgroundColor: Colors.black,
          child: Image.asset(
            'assets/icons/nw.png',
            width: 18.w,
            height: 12.h,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
