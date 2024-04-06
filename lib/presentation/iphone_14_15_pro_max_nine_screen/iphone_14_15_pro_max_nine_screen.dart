import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eight_screen/iphone_14_15_pro_max_eight_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_ten_screen/iphone_14_15_pro_max_ten_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_ten_screen/vehicle_details_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_twentythree_screen/vehicle_details.dart';

import '../iphone_14_15_pro_max_nine_screen/widgets/userprofilelist_item_widget.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class Iphone1415ProMaxNineScreen extends StatefulWidget {
  final String email;
  final String phone;
  final String name;
  final String city;
  final String type;

  const Iphone1415ProMaxNineScreen(
      {Key? key,
      required this.email,
      required this.phone,
      required this.name,
      required this.city,
      required this.type})
      : super(key: key);

  @override
  State<Iphone1415ProMaxNineScreen> createState() =>
      _Iphone1415ProMaxNineScreenState();
}

class _Iphone1415ProMaxNineScreenState
    extends State<Iphone1415ProMaxNineScreen> {
  String selectedType = "Sedan";
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFiftyColumn(context),
              SizedBox(height: 36.v),
              Group43(
                  title: "Car Owner",
                  subtile: "You wish to drive a car,\nthat you own.",
                  img: Container(
                    width: 106.h,
                    height: 39.v,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/img_14_1.png"),
                        fit: BoxFit.fill,
                      ),
                    ),
                  )),
              SizedBox(height: 36.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 56.h),
                      child: Text("Choose the Vehicle type",
                          style: CustomTextStyles.titleSmallBlack900Medium))),
              SizedBox(height: 16.v),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: _buildUserProfileList(context),
              ),
              SizedBox(height: 82.v),
              CustomOutlinedButton(
                  decoration: BoxDecoration(
                      color: theme.colorScheme.primary,
                      borderRadius: BorderRadius.circular(12)),
                  text: "Continue",
                  margin: EdgeInsets.only(left: 43.h, right: 44.h),
                  onPressed: () {
                    onTapContinue(context);
                  }),
              // SizedBox(height: 35.v),
              // Container(
              //     height: 9.v,
              //     width: 131.h,
              //     decoration: BoxDecoration(
              //         color: theme.colorScheme.primary,
              //         borderRadius: BorderRadius.circular(4.h))),
              // SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFiftyColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 60.v),
      decoration: AppDecoration.gradientCyanToBlueGray
          .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 13.v),
          CustomImageView(
              fit: BoxFit.fill,
              imagePath: ImageConstant.img21,
              height: 49.v,
              width: 178.h,
              margin: EdgeInsets.only(left: 3.h)),
          SizedBox(height: 12.v),
          Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 10.v, bottom: 5.v),
                    child: Text("Earn with ApniGaadi",
                        style: theme.textTheme.headlineLarge)),
                CustomImageView(
                    imagePath: ImageConstant.img12,
                    height: 55.adaptSize,
                    width: 55.adaptSize,
                    margin: EdgeInsets.only(left: 10.h))
              ])),
          SizedBox(height: 12.v),
          Container(
              width: 225.h,
              margin: EdgeInsets.only(left: 3.h),
              child: Text("Earn when, where are how, at your own terms.",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.bodyLarge))
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList(BuildContext context) {
    List<String> text = ["SUV", "Sedan", "Mini"];
    List<String> images = [
      ImageConstant.imgSuv1,
      ImageConstant.imgSadan1,
      ImageConstant.imgMini1
    ];

    return Container(
        width: 343.h,
        height: 210.v,
        padding: EdgeInsets.symmetric(horizontal: 0, vertical: 25.v),
        decoration: AppDecoration.outlineOnPrimaryContainer1.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
          color: Color(0xFF606060),
        ),
        child: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 24.h);
            },
            itemCount: 3,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  setState(() {
                    selectedType = text[index];
                  });
                },
                child: UserprofilelistItemWidget(
                  img: images[index],
                  selected: selectedType == text[index],
                  text: text[index],
                ),
              );
            }));
  }

  /// Navigates to the iphone1415ProMaxTenScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return VehicleDetailsScreen(
          carType: selectedType,
          email: widget.email,
          phone: widget.phone,
          city: widget.city,
          name: widget.name,
          vehicleType: widget.type);
    }));
  }
}
