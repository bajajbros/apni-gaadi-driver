import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/backend/modals.dart';
import 'package:apni_gaadi_driver/chat/text.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_ten_screen/iphone_14_15_pro_max_ten_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';

class VehicleDetailsScreen extends StatefulWidget {
  final String carType;
  final String email;
  final String phone;
  final String city;
  final String name;
  final String vehicleType;
  const VehicleDetailsScreen({
    Key? key,
    required this.email,
    required this.phone,
    required this.city,
    required this.name,
    required this.vehicleType,
    required this.carType,
  }) : super(key: key);

  @override
  State<VehicleDetailsScreen> createState() => _VehicleDetailsScreenState();
}

class _VehicleDetailsScreenState extends State<VehicleDetailsScreen> {
  String? adhaar;
  String? profilePic;
  String? license;
  String? pan;
  String? rc;
  String? insurance;
  TextEditingController numbeController = TextEditingController();
  TextEditingController colorController = TextEditingController();
  TextEditingController modelController = TextEditingController();

  String selectedBrand = "Select a Brand";
  String selectedName = "Select a Name";
  List<String> brands = ["Select a Brand"];
  List<String> names = ["Select a Name"];

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
                  Text("Enter Vehicle Details",
                      style: theme.textTheme.titleLarge!.copyWith(
                          decoration: TextDecoration.underline,
                          color: Colors.black)),
                  // SizedBox(height: 10.v),
                  // CustomText(
                  //   text: "Long Press To Preview Image",
                  //   color: Colors.white54,
                  // ),
                  SizedBox(height: 20.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: CustomTextFormField(
                        controller: numbeController,
                        autofocus: false,
                        hintText: "Vehicle Number",
                        textInputType: TextInputType.text,
                      )),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: CustomTextFormField(
                        controller: colorController,
                        autofocus: false,
                        hintText: "Vehicle Color",
                        textInputType: TextInputType.text,
                      )),
                  SizedBox(height: 30.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 43.h),
                      child: CustomTextFormField(
                        controller: modelController,
                        autofocus: false,
                        hintText: "Model Number",
                        textInputType: TextInputType.text,
                      )),
                  SizedBox(height: 30.v),
                  FutureBuilder<List<GetBrands>>(
                      future: ApiMethods.getBrands(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          snapshot.data!.forEach((element) {
                            String brand = element.brand1;
                            if (!brands.contains(brand)) {
                              brands.add(brand);
                              log(brands.length.toString());
                            }
                          });

                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 40),
                            child: Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  border: Border.all(
                                      color: appTheme.gray500, width: 1)),
                              padding: EdgeInsets.all(16.0),
                              child: DropdownButton<String>(
                                style: TextStyle(color: Colors.black),
                                dropdownColor: appTheme.gray50,
                                value: selectedBrand,
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedBrand = newValue!;
                                    log(selectedBrand);
                                  });
                                },
                                items: brands.map<DropdownMenuItem<String>>(
                                    (String value) {
                                  return DropdownMenuItem<String>(
                                    value: value,
                                    child: Text(
                                      value,
                                      style: TextStyle(color: Colors.black),
                                    ),
                                  );
                                }).toList(),
                              ),
                            ),
                          );
                        }
                        return Container();
                      }),
                  SizedBox(height: 30.v),

                  selectedBrand == "Select a Brand"
                      ? Container()
                      : FutureBuilder<List<GetNames>>(
                          future: ApiMethods.getNames(brand: selectedBrand),
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              log(snapshot.data!.length.toString());
                              snapshot.data!.forEach((element) {
                                String brand = element.models;
                                if (!names.contains(brand)) {
                                  names.add(brand);
                                  log(names.length.toString());
                                }
                              });

                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 40),
                                child: Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      border: Border.all(
                                          color: appTheme.gray500, width: 1)),
                                  padding: EdgeInsets.all(16.0),
                                  child: DropdownButton<String>(
                                    style: TextStyle(color: Colors.black),
                                    dropdownColor: appTheme.gray50,
                                    value: selectedName,
                                    onChanged: (String? newValue) {
                                      setState(() {
                                        selectedName = newValue!;
                                        log(selectedBrand);
                                      });
                                    },
                                    items: names.map<DropdownMenuItem<String>>(
                                        (String value) {
                                      return DropdownMenuItem<String>(
                                        value: value,
                                        child: Text(
                                          value,
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      );
                                    }).toList(),
                                  ),
                                ),
                              );
                            }
                            return Container();
                          }),

                  SizedBox(height: 60.v),
                  CustomOutlinedButton(
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      text: "Submit",
                      margin: EdgeInsets.only(left: 43.h, right: 44.h),
                      onPressed: () {
                        if (numbeController.text.isNotEmpty ||
                            colorController.text.isNotEmpty ||
                            modelController.text.isNotEmpty ||
                            selectedBrand.toLowerCase() != "select a brand" ||
                            selectedName != "Select a Name") {
                          log(selectedBrand);
                          log(selectedName);

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
              Text("Please Enter Your Vehicle Details.",
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
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
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
    if (selectedBrand == "Select a Brand" || selectedName == "Select a Name") {
      Fluttertoast.showToast(msg: "All Fields are required");
    } else {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return Iphone1415ProMaxTenScreen(
                email: widget.email,
                phone: widget.phone,
                city: widget.city,
                name: widget.name,
                vehicleType: widget.vehicleType,
                carType: widget.carType,
                brand: selectedBrand,
                model: modelController.text,
                color: colorController.text,
                vehicleNumber: numbeController.text,
                vehicleName: selectedName);
          },
        ),
      );
    }
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
        decoration: AppDecoration.outlineOnPrimaryContainer
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 2, bottom: 2),
              child: Text(
                selectedFileName ?? widget.text,
                style: CustomTextStyles.bodyMediumGray500Regular
                    .copyWith(color: appTheme.gray500),
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(top: 4, bottom: 1),
              child: Text(
                "Upload",
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
}
