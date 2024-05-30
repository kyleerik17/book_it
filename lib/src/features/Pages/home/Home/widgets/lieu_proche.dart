import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LieuxProches extends StatelessWidget {
  const LieuxProches({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          const ElementLieuProche(
            nom: 'Le Footeux, Zone 4',
            heuresOuverture: '8:00 / 21:00',
            distance: 'à 0,2 Km',
            imagePath: 'assets/images/ima1.jpeg',
          ),
          SizedBox(width: 2.w),
          const ElementLieuProche(
            nom: 'Le PSG, Zone 4',
            heuresOuverture: '8:00 / 21:00',
            distance: 'à 0,4 Km',
            imagePath: 'assets/images/ima2.jpeg',
          ),
          SizedBox(width: 2.w),
          const ElementLieuProche(
            nom: 'The Bulls, Zone 4',
            heuresOuverture: '8:00 / 21:00',
            distance: 'à 0,5 Km',
            imagePath: 'assets/images/ima3.png',
          ),
        ],
      ),
    );
  }
}

class ElementLieuProche extends StatelessWidget {
  final String nom;
  final String heuresOuverture;
  final String distance;
  final String imagePath;

  const ElementLieuProche({
    Key? key,
    required this.nom,
    required this.heuresOuverture,
    required this.distance,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 40.w,
          padding: EdgeInsets.all(2.w),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(2.w),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 35.w,
                width: 35.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(1.w),
                ),
              ),
              SizedBox(height: 2.w),
              Text(
                nom,
                style: TextStyle(
                  fontFamily: "Cabin",
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 1.w),
              Row(
                children: [
                  Icon(Icons.access_time, size: 4.w),
                  SizedBox(width: 1.w),
                  Text(
                    heuresOuverture,
                    style: TextStyle(
                      fontFamily: "Cabin",
                      fontSize: 10.sp,
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
                  SizedBox(width: 1.w),
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
        ),
      ],
    );
  }
}
