import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 4.w),
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
    );
  }
}
