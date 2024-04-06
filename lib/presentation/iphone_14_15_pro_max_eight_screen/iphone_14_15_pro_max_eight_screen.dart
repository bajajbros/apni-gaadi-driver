import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_nine_screen/iphone_14_15_pro_max_nine_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_ten_screen/iphone_14_15_pro_max_ten_screen.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_ten_screen/vehicle_details_screen.dart';

import '../iphone_14_15_pro_max_eight_screen/widgets/userprofilesection_item_widget.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:flutter/material.dart';

class Group43 extends StatelessWidget {
  final String title;
  final String subtile;
  final Widget img;
  Group43({required this.title, required this.subtile, required this.img});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 343.h,
          height: 116.v,
          child: Stack(
            children: [
              Positioned(
                left: 0,
                top: 0,
                child: Container(
                  width: 343.h,
                  height: 116.v,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 2, color: Color(0xFF959595)),
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 24.26.h,
                top: 18.67.v,
                child: Text(
                  title,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 23,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 24.h,
                top: 62.v,
                child: SizedBox(
                  width: 220.h,
                  child: Text(
                    subtile,
                    style: TextStyle(
                      color: Color(0xFF959595),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ),
              ),
              Positioned(left: 222.h, top: 40.v, child: img),
            ],
          ),
        ),
      ],
    );
  }
}

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxEightScreen extends StatelessWidget {
  final String email;
  final String phone;
  final String name;
  final String city;
  Iphone1415ProMaxEightScreen(
      {Key? key,
      required this.email,
      required this.phone,
      required this.name,
      required this.city})
      : super(key: key);

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildEarnWithApniGaadiSection(context),
                SizedBox(height: 24.v),
                Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                        padding: EdgeInsets.only(left: 56.h),
                        child: Text("Choose the Vehicle",
                            style: CustomTextStyles.bodyMediumBlack900))),
                SizedBox(height: 0.v),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.v),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return Iphone1415ProMaxNineScreen(
                            email: email,
                            phone: phone,
                            name: name,
                            city: city,
                            type: "Car");
                      }));
                    },
                    child: Group43(
                        title: "Car Owner",
                        subtile: "You wish to drive a car,\nthat you own.",
                        img: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            width: 106,
                            height: 39,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img_14_1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.v),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return VehicleDetailsScreen(
                            carType: "Bike",
                            email: email,
                            phone: phone,
                            name: name,
                            city: city,
                            vehicleType: "Bike");
                      }));
                    },
                    child: Group43(
                        title: "Motorbike (2 wheeler)",
                        subtile:
                            "You wish to drive motorcycle or scooter, that you own.",
                        img: Padding(
                          padding: const EdgeInsets.only(left: 20, top: 10),
                          child: Container(
                            width: 76,
                            height: 48,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage("assets/images/img_10_1.png"),
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        )),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.v),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return VehicleDetailsScreen(
                            carType: "Auto",
                            email: email,
                            phone: phone,
                            name: name,
                            city: city,
                            vehicleType: "Auto");
                      }));
                    },
                    child: Group43(
                      title: "Auto rickshaw",
                      subtile:
                          "You wish to drive a Auto rickshaw, that you own.",
                      img: Container(
                        width: 84,
                        height: 56,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/img_11_1.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 12.v),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) {
                        return VehicleDetailsScreen(
                            carType: "E-rickshaw",
                            email: email,
                            phone: phone,
                            name: name,
                            city: city,
                            vehicleType: "E-rickshaw");
                      }));
                    },
                    child: Group43(
                      title: "E-rickshaw",
                      subtile:
                          "You wish to drive a Auto rickshaw, that you own.",
                      img: Container(
                        width: 84,
                        height: 56,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/images/9.png"),
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                // SizedBox(height: 60.v),
                // CustomOutlinedButton(
                //     onPressed: () {
                //       onTapUserProfile(context);
                //     },
                //     decoration: BoxDecoration(
                //         color: theme.colorScheme.primary,
                //         borderRadius: BorderRadius.circular(12)),
                //     text: "Continue",
                //     margin: EdgeInsets.only(left: 43.h, right: 44.h)),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEarnWithApniGaadiSection(BuildContext context) {
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
              imagePath: ImageConstant.img21,
              height: 49.v,
              width: 178.h,
              fit: BoxFit.fill,
              margin: EdgeInsets.only(left: 3.h)),
          SizedBox(height: 12.v),
          Padding(
            padding: EdgeInsets.only(left: 3.h),
            child: Row(
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 10.v, bottom: 5.v),
                    child: Text("Earn with ApniGaadi",
                        style: theme.textTheme.headlineLarge)),
                CustomImageView(
                    imagePath: ImageConstant.img12,
                    height: 55.adaptSize,
                    width: 55.adaptSize,
                    margin: EdgeInsets.only(left: 10.h))
              ],
            ),
          ),
          SizedBox(height: 12.v),
          Container(
            width: 225.h,
            margin: EdgeInsets.only(left: 3.h),
            child: Text("Earn when, where are how, at your own terms.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodyLarge),
          )
        ],
      ),
    );
  }
}
