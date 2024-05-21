import 'package:book_it/gen/assets.gen.dart';
import 'package:flutter/material.dart';


class AppLogo extends StatelessWidget {
  final Color? color;

  const AppLogo({Key? key, 
   
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Assets.images.logoText.svg(color: color);
  }
}