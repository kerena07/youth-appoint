import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/app_bar/appbar_image.dart';
import 'package:youthappoint/widgets/app_bar/appbar_subtitle.dart';
import 'package:youthappoint/widgets/app_bar/custom_app_bar.dart';
import 'package:youthappoint/widgets/custom_elevated_button.dart';
import 'package:youthappoint/widgets/custom_text_form_field.dart';

class PostJobsScreen extends StatelessWidget {
  PostJobsScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController nameController = TextEditingController();
  TextEditingController baseInputFieldController = TextEditingController();
  TextEditingController baseInputFieldController1 = TextEditingController();
  TextEditingController baseInputFieldController2 = TextEditingController();
  TextEditingController editTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildNavigationBar(context),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(right: 11.h),
                    padding: EdgeInsets.symmetric(horizontal: 12.h),
                    decoration: AppDecoration.fillRed,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 16.v),
                        _buildJobNameInput(context),
                        SizedBox(height: 16.v),
                        _buildPlaceInput(context),
                        SizedBox(height: 18.v),
                        _buildWorkingHoursInput(context),
                        SizedBox(height: 18.v),
                        _buildCommissionRangeInput(context),
                        SizedBox(height: 18.v),
                        Text(
                          "Add a description about your Job",
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 17.v),
                        CustomTextFormField(
                          controller: editTextController,
                          textInputAction: TextInputAction.done,
                          borderDecoration: TextFormFieldStyleHelper.fillGray1,
                          filled: true,
                          fillColor: appTheme.gray100,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  _buildPostButton(context),
                  SizedBox(height: 23.v),
                  Container(
                    width: 350.h,
                    margin: EdgeInsets.symmetric(horizontal: 19.h),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor ",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodyMediumGothicA1.copyWith(
                        height: 1.43,
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillRed,
      child: CustomAppBar(
        title: AppbarSubtitle(
          text: "Post a Job",
          margin: EdgeInsets.only(left: 16.h),
        ),
        actions: [
          Container(
            margin: EdgeInsets.only(
              left: 8.h,
              top: 14.v,
              right: 22.h,
            ),
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: AppbarImage(
              imagePath: ImageConstant.imgSearch,
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 4.h,
              top: 14.v,
              right: 30.h,
            ),
            padding: EdgeInsets.all(8.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: AppbarImage(
              imagePath: ImageConstant.imgMoreHorizontal,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildJobNameInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Job Name",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          controller: nameController,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPlaceInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Place",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 7.v),
        CustomTextFormField(
          width: 148.h,
          controller: baseInputFieldController,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildWorkingHoursInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Working Hours",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          width: 148.h,
          controller: baseInputFieldController1,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildCommissionRangeInput(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Commission Range",
          style: theme.textTheme.titleMedium,
        ),
        SizedBox(height: 5.v),
        CustomTextFormField(
          width: 236.h,
          controller: baseInputFieldController2,
          borderDecoration: TextFormFieldStyleHelper.fillGray,
          filled: true,
          fillColor: appTheme.gray100,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPostButton(BuildContext context) {
    return CustomElevatedButton(
      height: 64.v,
      width: 129.h,
      text: "Post",
      margin: EdgeInsets.only(left: 123.h),
      buttonStyle: CustomButtonStyles.fillRedTL32,
      alignment: Alignment.centerLeft,
      onPressed: () {
        // Navigate to the Job Description screen when the "Post" button is pressed
        Navigator.pushNamed(context, AppRoutes.jobDescScreen);
      },
    );
  }
}
