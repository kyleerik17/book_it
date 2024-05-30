import 'package:book_it/src/features/Pages/Reservation/pages/pages.dart';
import 'package:book_it/src/features/Pages/Reservation/widgets/bottom.dart';
import 'package:book_it/src/features/Pages/home/Home/widgets/appbar.dart';
import 'package:book_it/src/features/Pages/home/Mesresas/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class ReservationPage extends StatefulWidget {
  const ReservationPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _ReservationPageState createState() => _ReservationPageState();
}

class _ReservationPageState extends State<ReservationPage> {
  String _selectedButton = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      _selectedButton = buttonText;
    });
  }

  Widget _buildReservationContainer() {
    return Container(
      width: 90.w,
      height: 17.w,
      margin: EdgeInsets.only(bottom: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.5.h),
        border: Border.all(color: Colors.orange),
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Container(
              color: const Color(0xFFEA7C17),
              width: 22.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '13:00',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        '14:00',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Le temple du Foot",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 0.5.h),
                SizedBox(height: 0.5.h),
                Text(
                  'Terrain T01    |    20 000 F ',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Gap(2.w),
              Image.asset(
                'assets/icons/fw.png',
                width: 6.w,
                height: 3.w,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReservation1Container() {
    return Container(
      width: 90.w,
      height: 17.w,
      margin: EdgeInsets.only(bottom: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.5.h),
        border: Border.all(color: Colors.orange),
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Container(
              width: 22.w,
              color: const Color(0xFFEA7C17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '16:00',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        '17:00',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Le temple du Foot",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 0.5.h),
                SizedBox(height: 0.5.h),
                Text(
                  'Terrain T01    |    20 000 F ',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Gap(2.w),
              Image.asset(
                'assets/icons/fw.png',
                width: 6.w,
                height: 3.w,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReservation3Container() {
    return Container(
      width: 90.w,
      height: 17.w,
      margin: EdgeInsets.only(bottom: 2.h),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.5.h),
        border: Border.all(color: Colors.black),
      ),
      child: Row(
        children: [
          ClipRRect(
            child: Container(
              width: 22.w,
              color: Colors.black,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '16:00',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        '17:00',
                        style: TextStyle(
                          fontSize: 14.sp,
                          color: Colors.white,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(width: 2.w),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Le temple du Foot",
                  style: TextStyle(
                    fontSize: 12.sp,
                    color: Colors.black,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 0.5.h),
                Text(
                  'Terrain T03    |    20 000 F ',
                  style: TextStyle(
                    fontSize: 10.sp,
                    color: Colors.black,
                    fontFamily: "Cabin",
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Gap(2.w),
              Image.asset(
                'assets/icons/fw.png',
                width: 6.w,
                height: 3.w,
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildReservation4Container() {
    return InkWell(
      onTap: () {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          builder: (context) => const FractionallySizedBox(
            heightFactor: 0.7,
            child: ReservationDetails(),
          ),
        );
      },
      child: Container(
        width: 90.w,
        height: 17.w,
        margin: EdgeInsets.only(bottom: 2.h),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0.5.h),
          border: Border.all(color: Colors.black),
        ),
        child: Row(
          children: [
            ClipRRect(
              child: Container(
                width: 22.w,
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '16:00',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          '17:00',
                          style: TextStyle(
                            fontSize: 14.sp,
                            color: Colors.white,
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 2.w),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Le temple du Foot",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.black,
                      fontFamily: "Cabin",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  Text(
                    'Terrain T03    |    20 000 F ',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.black,
                      fontFamily: "Cabin",
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Gap(2.w),
                Image.asset(
                  'assets/icons/fw.png',
                  width: 6.w,
                  height: 3.w,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarWidget(),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(1.h),
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      hintText: 'Rechercher',
                      hintStyle: TextStyle(
                        color: const Color(0xFF737373),
                        fontFamily: 'Poppins,',
                        fontSize: 10.sp,
                      ),
                      prefixIcon: ImageIcon(
                        const AssetImage('assets/icons/search.png'),
                        size: 5.w,
                        color: Colors.black,
                      ),
                    ),
                    style: const TextStyle(
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    children: [
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _selectedButton == 'Tout'
                              ? Colors.black
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.5.h),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                          ),
                          minimumSize: Size(0, 3.8.h),
                        ),
                        onPressed: () => _onButtonPressed('Tout'),
                        child: Text(
                          'Tout',
                          style: TextStyle(
                            color: _selectedButton == 'Tout'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      Gap(2.w),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _selectedButton == 'En cours'
                              ? Colors.black
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.5.h),
                          ),
                          padding: EdgeInsets.symmetric(horizontal: 4.w),
                          minimumSize: Size(0, 3.8.h),
                        ),
                        onPressed: () => _onButtonPressed('En cours'),
                        child: Text(
                          'En cours',
                          style: TextStyle(
                            color: _selectedButton == 'En cours'
                                ? Colors.white
                                : Colors.black,
                          ),
                        ),
                      ),
                      Gap(2.w),
                      TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: _selectedButton == 'Terminées'
                              ? Colors.black
                              : Colors.white,
                          side: const BorderSide(color: Colors.grey),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0.5.h),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 4.w,
                          ),
                          minimumSize: Size(0, 3.8.h),
                        ),
                        onPressed: () => _onButtonPressed('Terminées'),
                        child: Text(
                          'Terminées',
                          style: TextStyle(
                              color: _selectedButton == 'Terminées'
                                  ? Colors.white
                                  : Colors.black),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Réservations en cours',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Voir tout',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "16/06/2024",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cabin',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  _buildReservationContainer(),
                  _buildReservation1Container(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Réservations antérieures',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'Voir tout',
                        style: TextStyle(
                          fontSize: 12.sp,
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "16/06/2024",
                        style: TextStyle(
                          fontSize: 13.sp,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Cabin',
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 1.h),
                  _buildReservation3Container(),
                  _buildReservation4Container(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ReservBottomNavBar(
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
