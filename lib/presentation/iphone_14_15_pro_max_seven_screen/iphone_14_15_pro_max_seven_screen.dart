import 'dart:async';
import 'dart:convert';

import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eleven_container_screen/iphone_14_15_pro_max_eleven_container_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:http/http.dart' as http;

class Iphone1415ProMaxSevenScreen extends StatefulWidget {
  final String phone;
  const Iphone1415ProMaxSevenScreen({Key? key, required this.phone})
      : super(key: key);

  @override
  State<Iphone1415ProMaxSevenScreen> createState() =>
      _Iphone1415ProMaxSevenScreenState();
}

class _Iphone1415ProMaxSevenScreenState
    extends State<Iphone1415ProMaxSevenScreen> {
  String code = "";
  void sendOTP(context) async {
    String url =
        "https://2factor.in/API/V1/d95d758b-92a4-11ed-9158-0200cd936042/SMS/+91${widget.phone}/AUTOGEN2/OTP1";
    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        Map<String, dynamic> data = jsonDecode(response.body);
        String otp = data['OTP'];
        setState(() {
          code = otp;
        });
        Fluttertoast.showToast(msg: "OTP sent");
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return Iphone1415ProMaxSevenScreen(
        //       // otp: otp,
        //       // phone: mobileNumberController.text,
        //       );
        // }));
      } else {
        // Handle error
        Fluttertoast.showToast(msg: "Failed to send OTP");
      }
    } catch (error) {
      // Handle error
      Fluttertoast.showToast(msg: "Failed to send OTP");
    }
  }

  bool resend = false;

  int seconds = 45;

  late Timer timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    sendOTP(context);
    const oneSec = const Duration(seconds: 1);
    timer = Timer.periodic(
      oneSec,
      (Timer timer) {
        if (seconds == 0) {
          // timer.cancel();
          setState(() {
            resend = true;
          });
          // Do something when the timer reaches 0
          print('Countdown reached 0!');
        } else {
          setState(() {
            seconds--;
          });
        }
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildFortyEightSection(context),
              SizedBox(height: 16.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 308.h,
                  margin: EdgeInsets.only(left: 27.h, right: 94.h),
                  child: Text(
                    "Enter the 6-digit OTP sent to you at XXX XXX XXXX",
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.titleMedium!
                        .copyWith(color: Colors.black),
                  ),
                ),
              ),
              SizedBox(height: 24.v),
              CustomImageView(
                  imagePath: ImageConstant.img41,
                  fit: BoxFit.fill,
                  height: 124.v,
                  width: 114.h),
              SizedBox(height: 43.v),
              Padding(
                padding: EdgeInsets.only(left: 20.h, right: 20.h),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) async {
                    if (value.length == 6) {
                      if (code == value) {
                        SharedPreferences preferences =
                            await SharedPreferences.getInstance();
                        preferences.setString("phone", widget.phone);
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return Iphone1415ProMaxElevenContainerScreen(
                            phone: widget.phone,
                          );
                        }));
                      } else {
                        Fluttertoast.showToast(msg: "Invalid OTP");
                      }
                    }
                  },
                ),
              ),
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 59.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "0:$seconds",
                          style: CustomTextStyles.labelLargeLightgreenA700,
                        ),
                      ),
                      InkWell(
                        onTap: resend
                            ? () {
                                sendOTP(context);
                                setState(() {
                                  seconds = 45;
                                  resend = false;
                                });
                              }
                            : null,
                        child: Padding(
                          padding: EdgeInsets.only(left: 43.h),
                          child: Text(
                            "Send code again",
                            style: CustomTextStyles.labelLargeLightgreenA700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Spacer(),
              CustomOutlinedButton(
                  decoration: BoxDecoration(
                    color: theme.colorScheme.primary,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  text: "Next",
                  margin: EdgeInsets.only(left: 43.h, right: 44.h),
                  onPressed: () {
                    onTapNext(context);
                  }),
              SizedBox(height: 35.v),
              // Container(
              //     height: 9.v,
              //     width: 131.h,
              //     decoration: BoxDecoration(
              //         color: theme.colorScheme.primary,
              //         borderRadius: BorderRadius.circular(4.h))),
              SizedBox(height: 14.v)
            ],
          ),
        ),
      ),
    );
  }

// 216313
  /// Section Widget
  Widget _buildFortyEightSection(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 67.h, vertical: 66.v),
      decoration: AppDecoration.gradientCyanToBlueGray
          .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 98.v),
          CustomImageView(
              fit: BoxFit.fill,
              imagePath: ImageConstant.img21,
              height: 81.v,
              width: 295.h),
        ],
      ),
    );
  }

  /// Navigates to the iphone1415ProMaxEightScreen when the action is triggered.
  onTapNext(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.iphone1415ProMaxEightScreen);
  }
}
