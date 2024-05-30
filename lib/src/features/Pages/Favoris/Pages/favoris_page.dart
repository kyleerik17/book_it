import 'package:book_it/src/features/Pages/Favoris/Widgets/bottom.dart';
import 'package:book_it/src/features/Pages/home/Home/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class FavorisPage extends StatefulWidget {
  const FavorisPage({Key? key}) : super(key: key);

  @override
  _FavorisPageState createState() => _FavorisPageState();
}

class _FavorisPageState extends State<FavorisPage> {
  String _selectedButton = '';

  void _onButtonPressed(String buttonText) {
    setState(() {
      _selectedButton = buttonText;
    });
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
                          minimumSize: Size(0, 3.h),
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
                          minimumSize: Size(0, 3.h),
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
                          minimumSize: Size(0, 3.h),
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
                  SizedBox(height: 4.w),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        const Row(
                          children: [
                            ElementPopulaireMaintenant(
                              nom: 'Le Footeux, Zone 4',
                              heuresOuverture: '8:00 / 21:00',
                              distance: 'à 0,2 Km',
                              imagePath: 'assets/images/ima1.jpeg',
                              iconPath: 'assets/icons/oc.png',
                              buttonText: 'Réserver',
                            ),
                          ],
                        ),
                        SizedBox(height: 4.w),
                        const Row(
                          children: [
                            ElementPopulaireMaintenant(
                              nom: 'Le PSG, Zone 4',
                              heuresOuverture: '8:00 / 21:00',
                              distance: 'à 0,4 Km',
                              imagePath: 'assets/images/ima2.jpeg',
                              iconPath: 'assets/icons/oc.png',
                              buttonText: 'Réserver',
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: FavorisBottomNavBar(
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

class ElementPopulaireMaintenant extends StatelessWidget {
  final String nom;
  final String heuresOuverture;
  final String distance;
  final String imagePath;
  final String iconPath;
  final String buttonText;

  const ElementPopulaireMaintenant({
    Key? key,
    required this.nom,
    required this.heuresOuverture,
    required this.distance,
    required this.imagePath,
    required this.iconPath,
    required this.buttonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 92.w,
        height: 28.w,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(0.5.h),
        ),
        child: Row(children: [
          SizedBox(width: 2.w),
          Container(
            width: 20.w,
            height: 20.w,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(0.5.h),
            ),
          ),
          SizedBox(width: 4.w),
          Expanded(
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
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
                    SizedBox(height: 1.w),
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
                          width: 4.w,
                          height: 4.w,
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
                Positioned(
                  top: 10,
                  right: 20,
                  child: Image.asset(
                    'assets/icons/oc.png',
                    width: 6.w,
                    height: 6.w,
                  ),
                ),
                Positioned(
                  top: 60,
                  right: 30,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 10.w),
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: Colors.black,
                        side: const BorderSide(color: Colors.black),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0.5.h),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 4.w),
                        minimumSize: Size(0, 3.8.h),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Réserver',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
