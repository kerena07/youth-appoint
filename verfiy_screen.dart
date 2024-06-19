import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/custom_elevated_button.dart';
import 'package:youthappoint/widgets/custom_outlined_button.dart';
import 'package:youthappoint/widgets/custom_radio_button.dart';

class VerfiyScreen extends StatelessWidget {
  VerfiyScreen({Key? key}) : super(key: key);

  String radioGroup = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.2,
                width: MediaQuery.of(context).size.width * 0.5,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 0.18,
                        width: MediaQuery.of(context).size.width * 0.22,
                        margin: EdgeInsets.only(bottom: 5.0),
                        decoration: BoxDecoration(color: appTheme.whiteA700),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgLogo1,
                      height: MediaQuery.of(context).size.height * 0.2,
                      width: MediaQuery.of(context).size.width * 0.5,
                      alignment: Alignment.center,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 8.0),
              Text("YOUTH APPOINT", style: theme.textTheme.displaySmall),
              SizedBox(height: 16.0),
              CustomOutlinedButton(
                width: MediaQuery.of(context).size.width * 0.5,
                text: "Enter your 4 digit OTP",
              ),
              SizedBox(height: 24.0),
              Text("Verification sent to your email ", style: theme.textTheme.bodyMedium),
              SizedBox(height: 48.0),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    _buildStudent(context),
                    GestureDetector(
                      onTap: () {
                        onTapFour(context);
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 24.0,
                            width: 24.0,
                            margin: EdgeInsets.only(bottom: 1.0),
                            decoration: BoxDecoration(
                              color: appTheme.black900,
                              borderRadius: BorderRadius.circular(12.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.0),
                            child: Text(
                              "Employer",
                              style: CustomTextStyles.titleMediumBlack900,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 32.0),
              CustomElevatedButton(
                width: MediaQuery.of(context).size.width * 0.5,
                text: "Sign In",
                onPressed: () {
                  onTapSignIn(context);
                },
              ),
              SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStudent(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 1.0),
      child: CustomRadioButton(
        text: "Student",
        value: "Student",
        groupValue: radioGroup,
        onChange: (value) {
          radioGroup = value;
        },
      ),
    );
  }

  void onTapFour(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.emplySignupScreen);
  }

  void onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.studentSignScreen);
  }
}
