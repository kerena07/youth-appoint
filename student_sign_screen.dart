import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/presentation/available_jobs_page/available_jobs_page.dart';
import 'package:youthappoint/widgets/custom_elevated_button.dart';
import 'package:youthappoint/widgets/custom_radio_button.dart';
import 'package:youthappoint/widgets/custom_text_form_field.dart';

class StudentSignScreen extends StatelessWidget {
  String radioGroup = "";
  List<String> radioList = ["lbl_student", "lbl_student"];
  String radioGroup1 = "";
  TextEditingController confirmPasswordEditTextController = TextEditingController();
  TextEditingController facultyEditTextController = TextEditingController();
  TextEditingController institutionEditTextController = TextEditingController();
  TextEditingController fullNameEditTextController = TextEditingController();
  TextEditingController emailEditTextController = TextEditingController();
  TextEditingController phoneNumberEditTextController = TextEditingController();
  TextEditingController passwordEditTextController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                height: 800.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 15.h,
                  vertical: 41.v,
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(33.h, 457.v, 55.h, 237.v),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                          ],
                        ),
                      ),
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 16.h,
                        bottom: 311.v,
                      ),
                    ),
                    _buildFacultyEditText(context),
                    _buildInstitutionEditText(context),
                    Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 3.h,
                          top: 2.v,
                          right: 3.h,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              "YOUTH APPOINT",
                              style: theme.textTheme.displaySmall,
                            ),
                            SizedBox(height: 15.v),
                            _buildFullNameEditText(context),
                            SizedBox(height: 24.v),
                            _buildEmailEditText(context),
                            SizedBox(height: 24.v),
                            _buildPhoneNumberEditText(context),
                            SizedBox(height: 24.v),
                            _buildPasswordEditText(context),
                            Spacer(),
                            _buildSignUpButton(context),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }





  /// Section Widget
  Widget _buildFacultyEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 88.v),
      child: CustomTextFormField(
        width: 354.h,
        controller: facultyEditTextController,
        hintText: "Faculty",
        alignment: Alignment.bottomCenter,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 16.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInstitutionEditText(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 150.v),
      child: CustomTextFormField(
        width: 354.h,
        controller: institutionEditTextController,
        hintText: "Institution",
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameEditText(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameEditTextController,
      hintText: "Full Name",
    );
  }

  /// Section Widget
  Widget _buildEmailEditText(BuildContext context) {
    return CustomTextFormField(
      controller: emailEditTextController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumberEditText(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberEditTextController,
      hintText: "Telephone Number",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildPasswordEditText(BuildContext context) {
    return CustomTextFormField(
      controller: passwordEditTextController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
      width: 129.h,
      text: "Sign Up",
      onPressed: () {
        Navigator.pushNamed(context, AppRoutes.availableJobsContainerScreen);
      },
    );
  }
}


void main() {
  runApp(
    MaterialApp(
      home: StudentSignScreen(),
    ),
  );
}
