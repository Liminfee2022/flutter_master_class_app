import 'package:flutter/material.dart';
import 'package:flutter_master_class_app/misc/color.dart';

class ResponsiveButton extends StatelessWidget {
  const ResponsiveButton({Key? key, this.width, this.isResponsive, this.press}) : super(key: key);

  final bool? isResponsive;
  final double? width;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return
     TextButton(
        onPressed: press,
        child: Container(
          padding: const EdgeInsets.all(10),
          width: width,
          height: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: AppColors.mainColor,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("img/button-one.png"),
            ],
          ),
        ),
    );
  }
}
