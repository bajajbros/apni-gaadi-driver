import 'dart:convert';

import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_seven_screen/iphone_14_15_pro_max_seven_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_phone_number.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxSixScreen extends StatelessWidget {
  Iphone1415ProMaxSixScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              children: [
                _buildFiftyOne(context),
                SizedBox(height: 16.v),
                Text(
                  "Confirm your Indentity",
                  style: theme.textTheme.titleLarge!.copyWith(
                      decoration: TextDecoration.underline,
                      color: Colors.black),
                ),
                SizedBox(height: 27.v),
                _buildNameRow(context),
                SizedBox(height: 25.v),
                CustomTextFormField(
                  width: 330.h,
                  controller: mobileNumberController,
                  hintText: "Mobile number",
                ),
                Spacer(),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: 220.h,
                    margin: EdgeInsets.only(left: 53.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "By continuing, I confirm I have read the ",
                            style: CustomTextStyles.bodyMediumBlack900,
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: CustomTextStyles.labelLargeLightgreenA70001,
                          ),
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                SizedBox(height: 21.v),
                CustomOutlinedButton(
                  buttonStyle: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(theme.primaryColor)),
                  // decoration: BoxDecoration(color: theme.primaryColor),
                  onPressed: () {
                    ApiMethods.login(context,
                        name:
                            nameController.text + "" + lastNameController.text,
                        mobile: mobileNumberController.text,
                        status: "Driver");
                  },
                  text: "Next",
                  margin: EdgeInsets.only(
                    left: 39.h,
                    right: 40.h,
                  ),
                ),
                SizedBox(height: 31.v),
                Container(
                  height: 9.v,
                  width: 119.h,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                ),
                SizedBox(height: 10.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

// 545580
  /// Section Widget
  Widget _buildFiftyOne(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 0.h,
        vertical: 60.v,
      ),
      decoration: AppDecoration.gradientCyanToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 90.v),
          CustomImageView(
            imagePath: ImageConstant.img21,
            height: 73.v,
            width: 267.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomTextFormField(
            width: 330.h,
            controller: nameController,
            hintText: "Full Name",
          ),
          // Padding(
          //   padding: EdgeInsets.only(left: 10.h),
          //   child: CustomTextFormField(
          //     width: 165.h,
          //     controller: lastNameController,
          //     hintText: "Last Name",
          //     textInputAction: TextInputAction.done,
          //   ),
          // ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIndiaOneRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: 88.h,
            padding: EdgeInsets.symmetric(
              horizontal: 17.h,
              vertical: 12.v,
            ),
            decoration: AppDecoration.outlineOnPrimaryContainer2.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgIndia1,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                ),
                // CustomImageView(
                //   imagePath: ImageConstant.imgVectorGray500,
                //   height: 4.v,
                //   width: 8.h,
                //   margin: EdgeInsets.only(
                //     top: 13.v,
                //     bottom: 12.v,
                //   ),
                // ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.only(left: 11.h),
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.outlineOnPrimaryContainer2.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                children: [
                  Text(
                    "+91",
                    style: CustomTextStyles.bodyMediumGray500,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 21.h),
                    child: Text(
                      "Mobile Number",
                      style: CustomTextStyles.bodyMediumGray500,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
