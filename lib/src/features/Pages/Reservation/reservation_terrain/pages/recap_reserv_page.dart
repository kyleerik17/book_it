import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../widgets/appbar_reserv.dart';
import '../widgets/slider2.dart';

class RecapReservPage extends StatelessWidget {
  const RecapReservPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7F8F9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AppBarReserv(),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Récapitulatif",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Le Footeux, Zone 4",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              SizedBox(height: 1.h),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/icons/ic.png',
                                    height: 4.w,
                                  ),
                                  SizedBox(width: 1.w),
                                  Text(
                                    "Football",
                                    style: TextStyle(
                                      fontFamily: "Cabin",
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Icon(Icons.access_time, size: 4.w),
                                  SizedBox(width: 0.5.w),
                                  Text(
                                    "08:00 / 21:00",
                                    style: TextStyle(
                                      fontFamily: "Cabin",
                                      fontSize: 10.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  SizedBox(width: 2.w),
                                  Image.asset(
                                    'assets/icons/gps.png',
                                    color: Colors.black,
                                    width: 4.w,
                                  ),
                                  SizedBox(width: 1.w),
                                  Text(
                                    'à 0,2 km',
                                    style: TextStyle(
                                      fontFamily: "Cabin",
                                      fontSize: 11.sp,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Image.asset(
                          'assets/icons/oc1.png',
                        ),
                      ],
                    ),
                    SizedBox(height: 1.h),
                    Slider2Page(),
                    SizedBox(height: 3.h),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SafeArea(
                child: Container(
                  color: Colors.white,
                  padding: EdgeInsets.symmetric(vertical: 1.h),
                  child: Column(
                    children: [
                      _buildRow("Référence", "MDX 987 992"),
                      _buildRow("Date", "15 Juin 2024"),
                      _buildRow("Terrain", "T05"),
                      _buildRow("Heure de début", "11:30"),
                      _buildRow("Durée", "60 minutes"),
                      
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildRow(String title, String value) {
    return Container(
      width: double.infinity,
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 12.sp,
                fontFamily: "Poppins",
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          Text(
            value,
            textAlign: TextAlign.end,
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: "Cabin",
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
