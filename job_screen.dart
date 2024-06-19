import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/app_bar/appbar_image.dart';
import 'package:youthappoint/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:youthappoint/widgets/app_bar/custom_app_bar.dart';
import 'package:youthappoint/widgets/custom_rating_bar.dart';

class JobScreen extends StatelessWidget {
  const JobScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 23.v),
                child: Column(children: [
                  _buildProfileSection(context),
                  SizedBox(height: 11.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 344.h,
                          margin: EdgeInsets.only(left: 8.h, right: 37.h),
                          child: Text(
                              "eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. ",
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall!
                                  .copyWith(height: 2.00)))),
                  SizedBox(height: 13.v),
                  Divider(),
                  SizedBox(height: 18.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 7.h),
                          child: Text("Job Experiences",
                              style: CustomTextStyles.bodyLargeWhiteA700))),
                  SizedBox(height: 15.v),
                  _buildJobCard(context),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: AppbarSubtitleOne(
            text: "YOUTH APPOINT", margin: EdgeInsets.only(left: 16.h)),
        actions: [
          Container(
              margin: EdgeInsets.only(left: 8.h, top: 14.v, right: 22.h),
              padding: EdgeInsets.all(8.h),
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder20),
              child: AppbarImage(imagePath: ImageConstant.imgSearch)),
          Container(
              margin: EdgeInsets.only(left: 4.h, top: 14.v, right: 30.h),
              padding: EdgeInsets.all(8.h),
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.circleBorder20),
              child: AppbarImage(imagePath: ImageConstant.imgMoreHorizontal))
        ],
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildProfileSection(BuildContext context) {
    return SizedBox(
        height: 231.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.bottomCenter, children: [
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 7.h),
                  child: Row(children: [
                    Padding(
                        padding: EdgeInsets.only(top: 211.v),
                        child: Text("Biodata",
                            style: CustomTextStyles.titleMediumSemiBold)),
                    Container(
                        height: 225.adaptSize,
                        width: 225.adaptSize,
                        margin: EdgeInsets.only(left: 16.h, bottom: 6.v),
                        child: Stack(alignment: Alignment.center, children: [
                          Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 52.h),
                                  child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage120x120,
                                            height: 120.adaptSize,
                                            width: 120.adaptSize,
                                            radius:
                                                BorderRadius.circular(60.h)),
                                        SizedBox(height: 13.v),
                                        Text("Full name",
                                            style: CustomTextStyles
                                                .headlineMediumGothicA1),
                                        SizedBox(height: 6.v),
                                        Text("Institution",
                                            style: CustomTextStyles
                                                .bodyLargeBlack900)
                                      ]))),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage2,
                              height: 225.adaptSize,
                              width: 225.adaptSize,
                              alignment: Alignment.center)
                        ]))
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(bottom: 25.v),
                  child: SizedBox(width: double.maxFinite, child: Divider())))
        ]));
  }

  /// Section Widget
  Widget _buildJobCard(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapJobCard(context);
        },
        child: Container(
            width: 358.h,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 15.v),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                      width: 265.h,
                      margin: EdgeInsets.only(right: 60.h),
                      child: RichText(
                          text: TextSpan(children: [
                            TextSpan(
                                text: "Job Title\n",
                                style: CustomTextStyles.titleMediumffffffff),
                            TextSpan(
                                text: "Details:\n",
                                style: theme.textTheme.titleSmall),
                            TextSpan(
                                text:
                                    "omnis voluptas assumenda est, omnis dolor repellendus.",
                                style: CustomTextStyles
                                    .bodyMediumGothicA1ffffffff),
                            TextSpan(
                                text: " \n\nRating:\n",
                                style: CustomTextStyles.bodyLargeffffffff
                                    .copyWith(height: 1.50))
                          ]),
                          textAlign: TextAlign.left)),
                  CustomRatingBar(initialRating: 0)
                ])));
  }

  /// Navigates to the jobDescScreen when the action is triggered.
  onTapJobCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobDescScreen);
  }
}
