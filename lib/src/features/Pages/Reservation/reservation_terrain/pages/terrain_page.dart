import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:book_it/src/features/Pages/Reservation/reservation_terrain/widgets/slider1.dart';
import '../widgets/appbar_reserv.dart';
import 'package:book_it/src/features/Pages/Reservation/reservation_terrain/pages/pages.dart';

class TerrainPage extends StatelessWidget {
  const TerrainPage({Key? key}) : super(key: key);

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
              padding: EdgeInsets.all(3.w),
              child: Row(
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
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 1.h),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Icon(Icons.sports_soccer, size: 5.w),
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
            ),
            Padding(
              padding: EdgeInsets.all(4.w),
              child: const Slider1Page(),
            ),
            _buildReservationContainer(context),
          ],
        ),
      ),
    );
  }

  Widget _buildReservationContainer(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(4.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(1.h),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "À partir de  ",
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      fontFamily: "Cabin",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    "20 000 F",
                    style: TextStyle(
                      color: Color(0xFF1A1A1A),
                      fontWeight: FontWeight.w500,
                      fontSize: 20,
                      fontFamily: "Cabin",
                    ),
                  ),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      transitionDuration: const Duration(milliseconds: 300),
                      pageBuilder: (_, __, ___) => const ReservTerrainPage(),
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
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.symmetric(horizontal: 3.h),
                  primary: const Color(0xFF1A1A1A),
                  onPrimary: Colors.white,
                ),
                child: const Text(
                  'Réserver',
                  style: TextStyle(
                    fontFamily: 'Cabin',
                    fontWeight: FontWeight.w600,
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
            height: 1,
          ),
          SizedBox(height: 1.h),
          Text(
            'Description',
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 1.h),
          Text(
            "Profitez d'un terrain de football de qualité pour vos matchs et entraînements. Équipé de gazon synthétique, éclairage nocturne, et vestiaires modernes. Réservez dès maintenant pour une expérience sportive optimale!",
            style: TextStyle(
              fontSize: 11.sp,
              color: const Color(0xFF7C7C7C),
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w400,
            ),
          ),
          SizedBox(height: 1.h),
          const Divider(
            color: Colors.grey,
            thickness: 0.5,
            height: 1,
          ),
          SizedBox(height: 0.5.h),
          Text(
            'Caractéristiques',
            style: TextStyle(
              fontSize: 12.sp,
              fontFamily: 'Cabin',
              fontWeight: FontWeight.w500,
            ),
          ),
          SizedBox(height: 2.h),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCharacteristicRow('Pelouse', 'Synthétique de haute qualité',
                  backgroundColor: Colors.grey[200]),
              SizedBox(height: 0.5.h),
              _buildCharacteristicRow('Dimensions', 'Standard FIFA'),
              SizedBox(height: 0.5.h),
              _buildCharacteristicRow(
                  'Eclairage', 'Eclairage nocturne performant',
                  backgroundColor: Colors.grey[200]),
              SizedBox(height: 0.5.h),
              _buildCharacteristicRow('Vestiaires', 'Modernes et spacieux'),
              SizedBox(height: 0.5.h),
              _buildCharacteristicRow('Accessibilité', 'Parking disponible',
                  backgroundColor: Colors.grey[200]),
              _buildLocationRow(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildCharacteristicRow(String title, String description,
      {Color? backgroundColor}) {
    return Container(
      color: backgroundColor ?? Colors.transparent,
      width: double.infinity,
      height: 4.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '  $title',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Cabin',
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ),
          Text(
            '$description  ',
            style: TextStyle(
              fontWeight: FontWeight.w400,
              fontFamily: 'Cabin',
              color: const Color(0xFF7C7C7C),
              fontSize: 12.sp,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildLocationRow() {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            '  Localisation',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'Cabin',
              color: Colors.black,
              fontSize: 12.sp,
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'Voir la localisation',
              style: TextStyle(
                fontFamily: 'Cabin',
                color: const Color(0xFFEA7C17),
                fontWeight: FontWeight.w600,
                fontSize: 12.sp,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
