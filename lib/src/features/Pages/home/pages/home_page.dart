import 'package:book_it/src/features/Pages/home/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(4.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Text(
                "book it",
                style: TextStyle(
                  fontSize: 24.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.white),
                  prefixIcon: Icon(Icons.search, color: Colors.white),
                  suffixIcon: Icon(Icons.build, color: Colors.white),
                  border: InputBorder.none,
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                ),
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              'Les plus réservés',
              style: TextStyle(fontSize: 16.sp, color: Colors.black),
            ),
            SizedBox(height: 1.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/std.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Le club Abidjan',
                        style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ABJ Marcory',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            '50 000 F +',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/trr.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Babi foot',
                        style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ABJ Marcory',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            '50 000 F +',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 3.h),
            Row(
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/std.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Le club Abidjan',
                        style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ABJ Marcory',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            '50 000 F +',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: Column(
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage('assets/images/trr.jpeg'),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      const SizedBox(height: 8),
                      Text(
                        'Babi foot',
                        style: TextStyle(fontSize: 14.sp, color: Colors.black),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ABJ Marcory',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                          Text(
                            '50 000 F +',
                            style:
                                TextStyle(fontSize: 12.sp, color: Colors.black),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      // bottomNavigationBar: const BottomNavBarPage(),
    );
  }
}
