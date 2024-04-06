import 'package:apni_gaadi_driver/backend/methods.dart';
import 'package:apni_gaadi_driver/core/app_export.dart';
import 'package:apni_gaadi_driver/presentation/iphone_14_15_pro_max_eight_screen/iphone_14_15_pro_max_eight_screen.dart';
import 'package:apni_gaadi_driver/widgets/custom_outlined_button.dart';
import 'package:apni_gaadi_driver/widgets/custom_phone_number.dart';
import 'package:apni_gaadi_driver/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class Iphone1415ProMaxFiveScreen extends StatefulWidget {
  Iphone1415ProMaxFiveScreen({Key? key}) : super(key: key);

  @override
  State<Iphone1415ProMaxFiveScreen> createState() =>
      _Iphone1415ProMaxFiveScreenState();
}

class _Iphone1415ProMaxFiveScreenState
    extends State<Iphone1415ProMaxFiveScreen> {
  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByName('India');

  TextEditingController phoneNumberController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String selectedCity = 'Select a city';

  List<String> indianCities = [
    'Select a city',
    'Mumbai',
    'Delhi',
    'Bangalore',
    'Hyderabad',
    'Ahmedabad',
    'Chennai',
    'Kolkata',
    'Surat',
    'Pune',
    // Add more cities as needed
  ];

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.green,
        resizeToAvoidBottomInset: false,
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildWelcomeSection(context),
                  SizedBox(height: 18.v),
                  Center(
                    child: Text(
                      "Create Account",
                      style: theme.textTheme.titleLarge!.copyWith(
                          decoration: TextDecoration.underline,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(height: 26.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: Text(
                        "Name",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildNameInputSection(context),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: Text(
                        "Email address",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildEmailInputSection(context),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: Text(
                        "Mobile Number",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildMobileNumberInputSection(context),
                  SizedBox(height: 18.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 62.h),
                      child: Text(
                        "City you want to drive in",
                        style: CustomTextStyles.bodyMediumBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 40),
                    child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border:
                              Border.all(color: appTheme.gray500, width: 1.3)),
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: DropdownButton<String>(
                        style: TextStyle(color: Colors.white),
                        dropdownColor: appTheme.gray50,
                        value: selectedCity,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCity = newValue!;
                          });
                        },
                        items: indianCities
                            .map<DropdownMenuItem<String>>((String value) {
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
                  ),
                  SizedBox(height: 60.v),
                  _buildContinueButtonSection(context),
                  SizedBox(height: 50.v),
                  Center(
                    child: SizedBox(
                      width: 255.h,
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  "By creating an account, you agree to your ",
                              style: CustomTextStyles.bodyMediumLight,
                            ),
                            TextSpan(
                              text: "Term of service ",
                              style: CustomTextStyles.labelLarge13,
                            ),
                            TextSpan(
                              text: "and",
                              style: CustomTextStyles.bodyMediumLight,
                            ),
                            TextSpan(
                              text: " Privacy Policy",
                              style: CustomTextStyles.labelLarge13,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  Center(
                    child: Container(
                      height: 9.v,
                      width: 119.h,
                      decoration: BoxDecoration(
                        color: theme.colorScheme.primary,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 60.v,
      ),
      decoration: AppDecoration.gradientCyanToBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.customBorderBL40,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 60.v),
          CustomImageView(
            imagePath: ImageConstant.img21,
            height: 48.v,
            width: 175.h,
            fit: BoxFit.fill,
          ),
          SizedBox(height: 13.v),
          Container(
            width: 245.h,
            margin: EdgeInsets.only(right: 84.h),
            child: Text(
              "Welcome new ApniGaadi pantner! Please fill your details.",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: theme.textTheme.titleSmall,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNameInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
      child: CustomTextFormField(
        controller: nameController,
        hintText: "Your Name",
      ),
    );
  }

  /// Section Widget
  Widget _buildEmailInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
      child: CustomTextFormField(
        controller: emailController,
        hintText: "Email Address (optional)",
        textInputType: TextInputType.emailAddress,
      ),
    );
  }

  /// Section Widget
  Widget _buildMobileNumberInputSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
      child: CustomTextFormField(
        // width: 182.h,
        controller: phoneNumberController,
        hintText: "Your Mobile Number",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.phone,
      ),
    );
  }

  /// Section Widget
  Widget _buildContinueButtonSection(BuildContext context) {
    return CustomOutlinedButton(
      buttonStyle: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(appTheme.cyan200)),
      onPressed: () {
        // ApiMethods.register(context,
        //     email: emailController.text,
        //     mobile: phoneNumberController.text,
        //     name: nameController.text,
        //     city: selectedCity,
        //     status: "User",
        //     isUpdate: "false",
        //     ownerType: "",
        //     vehicle: "",
        //     profilePic: "",
        //     adhaar: "",
        //     DL: "",
        //     PAN: "",
        //     RC: "",
        //     insurance: "",
        //     isOnline: "",
        //     isOnlineStatus: "");
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return Iphone1415ProMaxEightScreen(
              email: emailController.text,
              phone: phoneNumberController.text,
              name: nameController.text,
              city: selectedCity);
        }));
      },
      text: "Continue",
      margin: EdgeInsets.only(
        left: 40.h,
        right: 39.h,
      ),
    );
  }
}
