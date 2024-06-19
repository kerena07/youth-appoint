import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/custom_elevated_button.dart';
import 'package:youthappoint/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class HomePageScreen extends StatelessWidget {
  HomePageScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.symmetric(
                                horizontal: 15.h, vertical: 31.v),
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                          height: 199.v,
                                          width: 254.h,
                                          margin: EdgeInsets.only(left: 47.h),
                                          child: Stack(
                                              alignment: Alignment.center,
                                              children: [
                                                Align(
                                                    alignment: Alignment.center,
                                                    child: Container(
                                                        height: 176.v,
                                                        width: 221.h,
                                                        decoration: BoxDecoration(
                                                            color: appTheme
                                                                .whiteA700))),
                                                CustomImageView(
                                                    imagePath:
                                                        ImageConstant.imgLogo1,
                                                    height: 199.v,
                                                    width: 254.h,
                                                    alignment: Alignment.center)
                                              ]))),
                                  SizedBox(height: 1.v),
                                  Text("YOUTH  APPOINT",
                                      style: theme.textTheme.displaySmall),
                                  SizedBox(height: 24.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: CustomTextFormField(
                                          controller: emailController,
                                          hintText: "Email",
                                          textInputType:
                                              TextInputType.emailAddress,
                                          contentPadding:
                                              EdgeInsets.all(20.h))),
                                  SizedBox(height: 16.v),
                                  Padding(
                                      padding: EdgeInsets.only(left: 6.h),
                                      child: CustomTextFormField(
                                          controller: passwordController,
                                          hintText: "Password",
                                          textInputAction: TextInputAction.done,
                                          textInputType:
                                              TextInputType.visiblePassword,
                                          suffix: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  30.h, 18.v, 11.h, 17.v),
                                              child: CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgEye,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize)),
                                          suffixConstraints:
                                              BoxConstraints(maxHeight: 59.v),
                                          obscureText: true,
                                          contentPadding: EdgeInsets.only(
                                              left: 20.h,
                                              top: 20.v,
                                              bottom: 20.v))),
                                  SizedBox(height: 12.v),
                                  Align(
                                      alignment: Alignment.centerRight,
                                      child: Text("Forgot Password?",
                                          style: theme.textTheme.bodyMedium)),
                                  SizedBox(height: 27.v),
                                  CustomElevatedButton(
                                      width: 129.h,
                                      text: "Sign In",
                                      buttonStyle: CustomButtonStyles.fillRed,
                                      onPressed: () {
                                        onTapSignIn(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Navigates to the verfiyScreen when the action is triggered.
  onTapSignIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.verfiyScreen);
  }
}
