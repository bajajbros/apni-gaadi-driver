import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/chat/text.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Iphone1415ProMaxTenScreen extends StatefulWidget {
  final String brand;
  final String model;
  final String color;
  final String vehicleNumber;
  final String carType;
  final String email;
  final String phone;
  final String city;
  final String name;
  final String vehicleName;
  final String vehicleType;
  const Iphone1415ProMaxTenScreen(
      {Key? key,
      required this.email,
      required this.phone,
      required this.city,
      required this.name,
      required this.vehicleType,
      required this.carType,
      required this.brand,
      required this.model,
      required this.color,
      required this.vehicleNumber,
      required this.vehicleName})
      : super(key: key);

  @override
  State<Iphone1415ProMaxTenScreen> createState() =>
      _Iphone1415ProMaxTenScreenState();
}

class _Iphone1415ProMaxTenScreenState extends State<Iphone1415ProMaxTenScreen> {
  String? adhaar;
  String? profilePic;
  String? license;
  String? pan;
  String? rc;
  String? insurance;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(children: [
                  _buildWelcomeSection(context),
                  SizedBox(height: 27.v),
                  Text("Required Steps:",
                      style: theme.textTheme.titleLarge!.copyWith(
                          decoration: TextDecoration.underline,
                          color: Colors.black)),
                  SizedBox(height: 10.v),
                  CustomText(
                    text: "Long Press To Preview Image",
                    color: Colors.white54,
                  ),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: AadhaarCardSection(
                        onFileSelected: (File file) async {
                          final bytes = await file.readAsBytes();
                          setState(() {
                            adhaar = base64Encode(bytes);
                          });
                        },
                        text: "Aadhaar card",
                      )),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: AadhaarCardSection(
                        onFileSelected: (File file) async {
                          final bytes = await file.readAsBytes();
                          setState(() {
                            profilePic = base64Encode(bytes);
                          });
                        },
                        text: "Profile Picture",
                      )),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: AadhaarCardSection(
                        onFileSelected: (File file) async {
                          final bytes = await file.readAsBytes();
                          setState(() {
                            license = base64Encode(bytes);
                          });
                        },
                        text: "Driving License-Front",
                      )),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: AadhaarCardSection(
                        onFileSelected: (File file) async {
                          final bytes = await file.readAsBytes();
                          setState(() {
                            pan = base64Encode(bytes);
                          });
                        },
                        text: "PAN card",
                      )),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: AadhaarCardSection(
                        onFileSelected: (File file) async {
                          final bytes = await file.readAsBytes();
                          setState(() {
                            rc = base64Encode(bytes);
                          });
                        },
                        text: "Registration Certificate (RC)",
                      )),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: AadhaarCardSection(
                        onFileSelected: (File file) async {
                          final bytes = await file.readAsBytes();
                          setState(() {
                            insurance = base64Encode(bytes);
                          });
                        },
                        text: "Vehicle Insurance",
                      )),
                  SizedBox(height: 60.v),
                  CustomOutlinedButton(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      text: "Submit",
                      margin: EdgeInsets.only(left: 43.h, right: 44.h),
                      onPressed: () {
                        if (adhaar != null &&
                            profilePic != null &&
                            license != null &&
                            pan != null &&
                            rc != null &&
                            insurance != null) {
                          onTapSubmit(context);
                        } else {
                          Fluttertoast.showToast(
                              msg: "All Fields Are Required");
                        }
                      }),
                  SizedBox(height: 35.v),
                  Container(
                      height: 9.v,
                      width: 131.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary,
                          borderRadius: BorderRadius.circular(4.h)))
                ])))));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 74.v),
        decoration: AppDecoration.gradientCyanToBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.customBorderBL40),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                  fit: BoxFit.fill,
                  imagePath: ImageConstant.img21,
                  height: 49.v,
                  width: 178.h),
              SizedBox(height: 20.v),
              Text("Welcome Driver!", style: theme.textTheme.headlineLarge),
              SizedBox(height: 21.v),
              Text("Please complete your Application Process.",
                  style: theme.textTheme.bodyLarge),
              SizedBox(height: 10.v)
            ]));
  }

  /// Common widget
  Widget _buildAadhaarCardSection(
    BuildContext context, {
    required String aadhaarCardText,
    required String uploadText,
  }) {
    String? selectedFileName;

    void _openFilePicker() async {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        setState(() {
          selectedFileName = result.files.single.name ?? 'No file selected';
        });
        // You can use the selected file here as needed
      } else {
        // User canceled the picker
      }

      // Force a rebuild to update the UI with the selected file name
      // ignore: invalid_use_of_protected_member
      (context as Element).markNeedsBuild();
    }

    return GestureDetector(
      onTap: _openFilePicker,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
        decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
            color: appTheme.gray50),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2, bottom: 2),
              child: Text(
                aadhaarCardText,
                style: CustomTextStyles.bodyMediumGray500Regular
                    .copyWith(color: appTheme.gray500),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 4, bottom: 1),
              child: Text(
                selectedFileName ?? uploadText,
                style: CustomTextStyles.bodyMediumGray500
                    .copyWith(color: appTheme.gray500),
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16,
              width: 16,
              margin: EdgeInsets.only(left: 11, top: 2, bottom: 2),
            ),
          ],
        ),
      ),
    );
  }

  /// Navigates to the iphone1415ProMaxElevenContainerScreen when the action is triggered.
  onTapSubmit(BuildContext context) {
    ApiMethods.register(context,
        email: widget.email,
        vehicleBrand: widget.brand,
        mobile: widget.phone,
        name: widget.name,
        city: widget.city,
        status: "Driver",
        isUpdate: "false",
        ownerType: widget.vehicleType,
        vehicle: widget.carType,
        profilePic: profilePic!,
        adhaar: adhaar!,
        DL: license!,
        PAN: pan!,
        RC: rc!,
        insurance: insurance!,
        isOnline: "Offline",
        isOnlineStatus: "",
        vehicleNumber: widget.vehicleNumber,
        vehicleColor: widget.color,
        vehicleModel: widget.model,
        vehicleName: widget.vehicleName);
  }
}

class AadhaarCardSection extends StatefulWidget {
  final Function(File)? onFileSelected;

  final String text;
  @override
  _AadhaarCardSectionState createState() => _AadhaarCardSectionState();
  AadhaarCardSection({required this.text, required this.onFileSelected});
}

class _AadhaarCardSectionState extends State<AadhaarCardSection> {
  File? selectedFile;
  String? selectedFileName;

  void _openFilePicker() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();

    if (result != null) {
      setState(() {
        selectedFileName = result.files.single.name ?? 'No file selected';
        selectedFile = File(result.files.single.path ?? "");
      });

      if (widget.onFileSelected != null) {
        widget.onFileSelected!(
          File(result.files.single.path!),
        );
      }
    } else {
      // User canceled the picker
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: selectedFile == null
          ? null
          : () {
              showDialog(
                  context: context,
                  builder: (context) {
                    return Image.file(selectedFile!);
                  });
            },
      onTap: _openFilePicker,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 19),
        decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
            border: Border.all(color: appTheme.gray500, width: 1.3),
            color: appTheme.gray50),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 2, top: 2),
                  child: Text(
                    selectedFileName ?? widget.text,
                    style: TextStyle(
                      color: Color(0xFF959595),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  )),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(top: 4, bottom: 1),
                  child: Text(
                    'Upload',
                    style: TextStyle(
                      color: Color(0xFF959595),
                      fontSize: 13,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w300,
                      height: 0,
                    ),
                  )),
              // CustomImageView(
              //   imagePath: ImageConstant.imgArrowRight,
              //   height: 16,
              //   width: 16,
              //   margin: EdgeInsets.only(left: 11, top: 2, bottom: 2),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
