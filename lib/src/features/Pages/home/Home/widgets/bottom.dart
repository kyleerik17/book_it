import 'package:book_it/src/features/Pages/Favoris/Pages/favoris.dart';
import 'package:book_it/src/features/Pages/Reservation/pages/reservation_page.dart';
import 'package:book_it/src/features/Pages/home/Home/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class BottomNavBar extends StatefulWidget {
  final Function(int) onTap;

  const BottomNavBar({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 1.5.w,
          child: const LinearProgressIndicator(
            backgroundColor: Colors.white,
            valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
            value: 0.2,
          ),
        ),
        BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          selectedFontSize: 10.sp,
          unselectedFontSize: 10.sp,
          unselectedItemColor: Colors.grey,
          currentIndex: _selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 0;
                  });
                  widget.onTap(0);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const HomePage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.w),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/h.png',
                        height: 8.w,
                        width: 8.w,
                        color: Colors.black,
                      ),
                      const Text(
                        'Acceuil',
                        style: TextStyle(
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 1;
                  });
                  widget.onTap(1);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ReservationPage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.w),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/rsvt.png',
                        height: 8.w,
                        width: 8.w,
                      ),
                      const Text(
                        'Réservation',
                        style: TextStyle(
                            fontFamily: "Cabin",
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF737373)),
                      ),
                    ],
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {},
                child: Container(),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 3;
                  });
                  widget.onTap(3);
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => const ClassePage()),
                  // );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.w),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/rf.png',
                        height: 8.w,
                        width: 8.w,
                      ),
                      const Text(
                        'Historiques',
                        style: TextStyle(
                          fontFamily: "Cabin",
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF737373),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedIndex = 4;
                  });
                  widget.onTap(4);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FavorisPage()),
                  );
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 1.w),
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/icons/cr.png',
                        height: 8.w,
                        width: 8.w,
                      ),
                      const Text(
                        'Favoris',
                        style: TextStyle(
                          fontFamily: "Cabin",
                          color: Color(0xFF737373),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              label: '',
            ),
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
            widget.onTap(index);
          },
        ),
      ],
    );
  }
}
