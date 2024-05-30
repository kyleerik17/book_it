import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LieuPopu extends StatelessWidget {
  const LieuPopu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const ElementPopulaireMaintenant(
            nom: 'The Bulls, Zone 4',
            heuresOuverture: '8:00 / 21:00',
            distance: 'à 0,2 Km',
            imagePath: 'assets/images/ima3.png',
          ),
          SizedBox(width: 4.w),
          const ElementPopulaireMaintenant(
            nom: 'Le Caré, Zone 4',
            heuresOuverture: '8:00 / 21:00',
            distance: 'à 0,5 Km',
            imagePath: 'assets/images/slide1.jpeg',
          ),
          SizedBox(width: 4.w),
        ],
      ),
    );
  }
}

class ElementPopulaireMaintenant extends StatelessWidget {
  final String nom;
  final String heuresOuverture;
  final String distance;
  final String imagePath;

  const ElementPopulaireMaintenant({
    Key? key,
    required this.nom,
    required this.heuresOuverture,
    required this.distance,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.w),
      width: 250,
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(0.5.h),
      ),
      child: Row(
        children: [
          Container(
            width: 15.w,
            height: 15.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(0.5.h),
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                nom,
                style: TextStyle(
                  fontSize: 12.sp,
                  fontFamily: "Cabin",
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 2.w),
              Row(
                children: [
                  Icon(Icons.access_time, size: 4.w),
                  const SizedBox(width: 4),
                  Text(
                    heuresOuverture,
                    style: TextStyle(
                      fontFamily: "Cabin",
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.w),
              Row(
                children: [
                  Image.asset(
                    'assets/icons/gps.png',
                    color: Colors.black,
                  ),
                  const SizedBox(width: 4),
                  Text(
                    distance,
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
        ],
      ),
    );
  }
}
