import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:sizer/sizer.dart';

class DebutReservPage extends StatefulWidget {
  const DebutReservPage({Key? key}) : super(key: key);

  @override
  _DebutReservPageState createState() => _DebutReservPageState();
}

int? selectedRadio;

class _DebutReservPageState extends State<DebutReservPage> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  void _onReserveButtonPressed() {
    setState(() {
      _currentPage = (_currentPage + 1) % 4;
    });
    _pageController.animateToPage(
      _currentPage,
      duration: const Duration(milliseconds: 200),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0.w),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/std.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Row(
            children: [
              SizedBox(width: 2.h),
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEBEBEB),
                  ),
                  padding: EdgeInsets.all(1.w),
                  child: Image.asset(
                    'assets/icons/back.png',
                    width: 7.w,
                    height: 7.w,
                    color: Colors.black,
                  ),
                ),
              ),
              const Spacer(),
              GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.only(right: 2.w),
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEBEBEB),
                  ),
                  padding: EdgeInsets.all(1.w),
                  child: Image.asset(
                    'assets/icons/set.png',
                    width: 7.w,
                    height: 7.w,
                    color: Colors.black,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFFEBEBEB),
                  ),
                  padding: EdgeInsets.all(1.w),
                  child: Image.asset(
                    'assets/icons/co.png',
                    width: 7.w,
                    height: 7.w,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 20.h),
              SizedBox(width: 2.h),
            ],
          ),
        ),
      ),
      body: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(3.h),
          topRight: Radius.circular(3.h),
        ),
        child: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            _buildFirstPage(),
            _buildSecondPage(),
            _buildthirdPage(),
            _buildfourPage(),
          ],
        ),
      ),
    );
  }

  Widget _buildFirstPage() {
    return Container(
      color: Colors.grey[100],
      child: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(5.w),
            child: Column(
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Le Club \nAbidjan",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 23.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 1.h),
                            Row(children: [
                              Image.asset(
                                'assets/icons/gps.png',
                                width: 5.w,
                                height: 5.w,
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                "ABJ, Zone 5",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                                textAlign: TextAlign.left,
                              ),
                            ]),
                            SizedBox(height: 0.5.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Image.asset(
                                      'assets/icons/st.png',
                                      width: 5.w,
                                      height: 5.w,
                                    ),
                                    SizedBox(width: 2.w),
                                    Text(
                                      "4.8 (2.1K avis)",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 10.sp,
                                        fontFamily: 'Poppins',
                                        fontWeight: FontWeight.w400,
                                      ),
                                    ),
                                  ],
                                ),
                                Gap(24.w),
                                Text(
                                  '50 000 F + / heure',
                                  style: TextStyle(
                                    fontSize: 12.sp,
                                    color: const Color(0xFFEA7C17),
                                    fontFamily: "Poppins",
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                Divider(
                  color: Colors.black,
                  height: 4.h,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu t anim id est laborum aborum abebd dbu... Lire plus.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 10.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Les avantages",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.left,
                          ),
                        ]),
                    SizedBox(height: 2.h),
                    SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1.5.h),
                              ),
                              width: 9.h,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/han.png',
                                    width: 9.h,
                                    height: 7.h,
                                  ),
                                  const Text(
                                    'Hygiène',
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Container(
                              width: 9.h,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1.5.h),
                              ),
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/pr.png',
                                    width: 9.h,
                                    height: 7.h,
                                  ),
                                  const Text(
                                    'Sécurité',
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1.5.h),
                              ),
                              width: 9.h,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/sh.png',
                                    width: 9.h,
                                    height: 7.h,
                                  ),
                                  const Text(
                                    'Douche',
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1.5.h),
                              ),
                              width: 9.h,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/sun.png',
                                    width: 9.h,
                                    height: 7.h,
                                  ),
                                  const Text(
                                    'Eclairage',
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 2.w),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(1.5.h),
                              ),
                              width: 9.h,
                              child: Column(
                                children: [
                                  Image.asset(
                                    'assets/icons/arb.png',
                                    width: 9.h,
                                    height: 7.h,
                                  ),
                                  const Text(
                                    'Arbitre',
                                    style: TextStyle(
                                        fontFamily: "Poppins",
                                        fontWeight: FontWeight.w600),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        )),
                  ],
                ),
                SizedBox(height: 3.h),
                Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  Text(
                    "Publié par",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ]),
                SizedBox(height: 1.h),
                Row(
                  children: [
                    Column(
                      children: [
                        Image.asset(
                          'assets/images/us.png',
                          width: 10.w,
                          height: 10.w,
                        ),
                      ],
                    ),
                    SizedBox(width: 2.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Ana.K",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12.sp,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Row(
                          children: [
                            SizedBox(width: 2.w),
                            Image.asset(
                              'assets/icons/st.png',
                              width: 5.w,
                              height: 5.w,
                            ),
                            SizedBox(width: 2.w),
                            Text(
                              "4.8 (2.1K avis)",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 11.sp,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: TextButton(
                  onPressed: _onReserveButtonPressed,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEA7C17),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 20.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                  ),
                  child: Text(
                    "Réserver",
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
    );
  }

  Widget _buildSecondPage() {
    return Container(
      color: Colors.grey[100],
      child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(5.w),
              child: Column(children: [
                Column(children: [
                  Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le Club Abidjan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 0.5.h),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/st.png',
                                width: 5.w,
                                height: 5.w,
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                "4.8 (2.1K avis)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ])
                  ]),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2.h,
                    height: 4.h,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Date & créneau",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 15.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                  SizedBox(height: 1.h),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFEA7C17),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/cld.png',
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          "Sélectionner une date",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFFEA7C17),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/time.png',
                        ),
                        SizedBox(width: 2.w),
                        Text(
                          "Sélectionner un créneau",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ])
              ])),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: TextButton(
                  onPressed: _onReserveButtonPressed,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFF404040),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 20.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                  ),
                  child: Text(
                    "Réserver",
                    style: TextStyle(
                      color: const Color(0xFF6D6D6D),
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
    );
  }

  Widget _buildthirdPage() {
    return Container(
      color: Colors.grey[100],
      child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(5.w),
              child: Column(children: [
                Column(children: [
                  Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le Club Abidjan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 0.5.h),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/st.png',
                                width: 5.w,
                                height: 5.w,
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                "4.8 (2.1K avis)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ])
                  ]),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2.h,
                    height: 4.h,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Date & créneau",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                  SizedBox(height: 1.h),
                  TextButton(
                    onPressed: _onReserveButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF6D6D6D),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/time.png',
                        ),
                        SizedBox(width: 3.w),
                        const Expanded(
                          child: Text(
                            "Mar. 25 Mars 2023",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          "modifier",
                          style: TextStyle(
                            color: const Color(0xFFEA7C17),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 0.5.h),
                  TextButton(
                    onPressed: _onReserveButtonPressed,
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF6D6D6D),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/time.png',
                        ),
                        SizedBox(width: 3.w),
                        const Expanded(
                          child: Text(
                            "De 18H à 19H 30 min.",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          "modifier",
                          style: TextStyle(
                            color: const Color(0xFFEA7C17),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.h),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedRadio = 1;
                            });
                          },
                          child: SizedBox(
                            width: 76.w,
                            height: 10.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.h),
                              child: Image.asset(
                                'assets/images/std.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Radio<int>(
                        value: 1,
                        groupValue: selectedRadio,
                        onChanged: (int? value) {
                          setState(() {
                            selectedRadio = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 1.h),
                          Image.asset(
                            'assets/icons/st.png',
                            width: 5.w,
                            height: 5.w,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "Terrain A",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Gap(30.w),
                      Text(
                        '50 000 F',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFFEA7C17),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedRadio = 2;
                            });
                          },
                          child: SizedBox(
                            width: 76.w,
                            height: 12.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.h),
                              child: Image.asset(
                                'assets/images/std.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Radio<int>(
                        value: 2,
                        groupValue: selectedRadio,
                        onChanged: (int? value) {
                          setState(() {
                            selectedRadio = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 1.h),
                          Image.asset(
                            'assets/icons/st.png',
                            width: 5.w,
                            height: 5.w,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "Terrain B",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Gap(30.w),
                      Text(
                        '50 000 F',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFFEA7C17),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              selectedRadio = 3;
                            });
                          },
                          child: SizedBox(
                            width: 76.w,
                            height: 12.h,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(2.h),
                              child: Image.asset(
                                'assets/images/std.jpeg',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 2.w),
                      Radio<int>(
                        value: 3,
                        groupValue: selectedRadio,
                        onChanged: (int? value) {
                          setState(() {
                            selectedRadio = value;
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          SizedBox(height: 1.h),
                          Image.asset(
                            'assets/icons/st.png',
                            width: 5.w,
                            height: 5.w,
                          ),
                          SizedBox(width: 2.w),
                          Text(
                            "Terrain",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 10.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                      Gap(30.w),
                      Text(
                        '50 000 F ',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xFFEA7C17),
                          fontFamily: "Poppins",
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ])
              ])),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: TextButton(
                  onPressed: _onReserveButtonPressed,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEA7C17),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 20.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                  ),
                  child: Text(
                    "Confirmez",
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
    );
  }

  Widget _buildfourPage() {
    return Container(
      color: Colors.grey[100],
      child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.all(5.w),
              child: Column(children: [
                Column(children: [
                  Row(children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Le Club Abidjan",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                            textAlign: TextAlign.left,
                          ),
                          SizedBox(height: 0.5.h),
                          Row(
                            children: [
                              Image.asset(
                                'assets/icons/st.png',
                                width: 5.w,
                                height: 5.w,
                              ),
                              SizedBox(width: 2.w),
                              Text(
                                "4.8 (2.1K avis)",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 10.sp,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                        ])
                  ]),
                  Divider(
                    color: Colors.black,
                    thickness: 0.2.h,
                    height: 4.h,
                  ),
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    Text(
                      "Date & créneau",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14.sp,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ]),
                  SizedBox(height: 1.h),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF6D6D6D),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/time.png',
                        ),
                        SizedBox(width: 3.w),
                        const Expanded(
                          child: Text(
                            "Mar. 25 Mars 2023",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          "modifier",
                          style: TextStyle(
                            color: const Color(0xFFEA7C17),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF6D6D6D),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/time.png',
                        ),
                        SizedBox(width: 3.w),
                        const Expanded(
                          child: Text(
                            "Mar. 25 Mars 2023",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          "modifier",
                          style: TextStyle(
                            color: const Color(0xFFEA7C17),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 1.h),
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF6D6D6D),
                      padding:
                          EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(1.5.h),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          'assets/icons/ar.png',
                        ),
                        SizedBox(width: 3.w),
                        const Expanded(
                          child: Text(
                            "Terrain A",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Poppins',
                            ),
                          ),
                        ),
                        Text(
                          "modifier",
                          style: TextStyle(
                            color: const Color(0xFFEA7C17),
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w500,
                            fontFamily: 'Poppins',
                          ),
                        ),
                      ],
                    ),
                  ),
                ])
              ])),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Center(
                child: TextButton(
                  onPressed: _onReserveButtonPressed,
                  style: TextButton.styleFrom(
                    backgroundColor: const Color(0xFFEA7C17),
                    padding:
                        EdgeInsets.symmetric(vertical: 1.5.h, horizontal: 20.w),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(2.h),
                    ),
                  ),
                  child: Text(
                    "Confirmez",
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
    );
  }
}
