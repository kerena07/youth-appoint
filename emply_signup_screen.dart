import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/custom_elevated_button.dart';
import 'package:youthappoint/widgets/custom_radio_button.dart';
import 'package:youthappoint/widgets/custom_text_form_field.dart';

class EmplySignupScreen extends StatelessWidget {
  EmplySignupScreen({Key? key}) : super(key: key);

  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController organizationTypeController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController fullNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  String radioGroup = "";
  List<String> radioList = ["lbl_student", "lbl_employer"];

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
                  alignment: Alignment.bottomCenter,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(
                        right: 15.h,
                        bottom: 308.v,
                      ),
                    ),

                    _buildOrganizationType(context),
                    _buildName(context),
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
                              "YOUTH  APPOINT",
                              style: theme.textTheme.displaySmall,
                            ),
                            SizedBox(height: 15.v),
                            _buildFullName(context),
                            SizedBox(height: 24.v),
                            _buildEmail(context),
                            SizedBox(height: 24.v),
                            _buildPhoneNumber(context),
                            SizedBox(height: 24.v),
                            _buildPassword(context),
                            Spacer(),
                            _buildSignUp(context),
                          ],
                        ),
                      ),
                    ),
                    _buildGroup42(context),
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
  Widget _buildOrganizationType(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 86.v),
      child: CustomTextFormField(
        width: 354.h,
        controller: organizationTypeController,
        hintText: "Organization Type",
        alignment: Alignment.bottomCenter,
        contentPadding: EdgeInsets.symmetric(
          horizontal: 13.h,
          vertical: 16.v,
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildName(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 150.v),
      child: CustomTextFormField(
        width: 354.h,
        controller: nameController,
        hintText: "Organization Name",
        alignment: Alignment.bottomCenter,
      ),
    );
  }

  /// Section Widget
  Widget _buildFullName(BuildContext context) {
    return CustomTextFormField(
      controller: fullNameController,
      hintText: "Full Name",
    );
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
      controller: emailController,
      hintText: "Email",
      textInputType: TextInputType.emailAddress,
    );
  }

  /// Section Widget
  Widget _buildPhoneNumber(BuildContext context) {
    return CustomTextFormField(
      controller: phoneNumberController,
      hintText: "Telephone Number",
      textInputType: TextInputType.phone,
    );
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
      controller: passwordController,
      hintText: "Password",
      textInputAction: TextInputAction.done,
      textInputType: TextInputType.visiblePassword,
      obscureText: true,
    );
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
      width: 129.h,
      text: "Sign Up",
      onPressed: () {
        onTapPostJobs(context);
      },
    );
  }

  /// Section Widget
  Widget _buildGroup42(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.fromLTRB(33.h, 457.v, 42.h, 237.v),
        child: Row(
          children: [

          ],
        ),
      ),
    );
  }

  /// Navigates to the PostJobsScreen when the action is triggered.
  void onTapPostJobs(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.postJobsScreen);
  }
}
