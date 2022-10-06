import 'package:flutter/material.dart';
import 'package:flutter_master_class_app/misc/color.dart';
import 'package:flutter_master_class_app/pages/navpages/main_page.dart';
import 'package:flutter_master_class_app/widgets/app_large_text.dart';
import 'package:flutter_master_class_app/widgets/app_text.dart';
import 'package:flutter_master_class_app/widgets/responsive_button.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  List images = [
    "img/welcome-one.png",
    "img/welcome-two.png",
    "img/welcome-three.png",
  ];
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView.builder(
            scrollDirection: Axis.vertical,
            onPageChanged: (index) {
              setState(() {
                pageIndex = index;
              });
            },
            itemCount: images.length,
            itemBuilder: (_, index) {
              return Container(
                width: double.maxFinite,
                height: double.maxFinite,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(images[index]), fit: BoxFit.cover),
                ),
                child: Container(
                  margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppLargeText(text: "Trips"),
                          AppText(
                            text: "Mountain",
                            size: 30,
                          ),
                          SizedBox(height: 20,),
                          Container(
                            width: 250,
                            child: AppText(
                              text:
                              "Mountain hikes give up you an incredible sense of freedom along with endurance test",
                              color: AppColors.textColor2,
                              size: 14,
                            ),
                          ),
                          SizedBox(height: 40,),
                          ResponsiveButton(width: 120, press: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                          },),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Container(
            margin: const EdgeInsets.only(top: 150, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Spacer(),
                Column(
                  children: [
                    ...List.generate(3, (indexDots) {
                      return Container(
                        margin: EdgeInsets.symmetric(vertical: 4),
                        width: 8,
                        height: pageIndex == indexDots ? 25 : 8,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: AppColors.mainColor.withOpacity(pageIndex == indexDots ? 1 : 0.3),
                        ),
                      );
                    }),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
