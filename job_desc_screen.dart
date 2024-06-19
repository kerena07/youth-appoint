import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/app_bar/appbar_title.dart';
import 'package:youthappoint/widgets/app_bar/custom_app_bar.dart';
import 'package:youthappoint/widgets/custom_elevated_button.dart';
import 'package:youthappoint/widgets/custom_icon_button.dart';

class JobDescScreen extends StatelessWidget {
  const JobDescScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 3.v),
          child: Column(
            children: [
              Container(
                width: 353.h,
                margin: EdgeInsets.only(
                  left: 15.h,
                  right: 20.h,
                ),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Job Description:\n",
                        style: CustomTextStyles.titleLargeRegular,
                      ),
                      TextSpan(
                        text:
                            "\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. \n\nLocation:\n\nWorking Hours:\n\nRequirements:\nomnis dolor repellendus.\nomnis dolor repellendus.\nomnis dolor repellendus.\nomnis dolor repellendus.\n\nEstimated Commission:\n",
                        style: CustomTextStyles.bodyLargeff000000,
                      ),
                      TextSpan(
                        text: "RM 1000 - 3500 ",
                        style: theme.textTheme.titleLarge,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 19.v),
              CustomElevatedButton(
                width: 129.h,
                text: "APPLY",
                margin: EdgeInsets.only(left: 107.h),
                alignment: Alignment.centerLeft,
              ),
              SizedBox(height: 23.v),
              _buildFrame(context),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 70.v,
      title: AppbarTitle(
        text: "JOB TITLE",
        margin: EdgeInsets.only(left: 16.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillRed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 40.adaptSize,
            width: 40.adaptSize,
            margin: EdgeInsets.only(bottom: 13.v),
            padding: EdgeInsets.all(3.h),
            decoration: AppDecoration.outline.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder20,
            ),
            child: CustomImageView(
              imagePath: ImageConstant.imgAvatar,
              height: 34.adaptSize,
              width: 34.adaptSize,
              radius: BorderRadius.circular(
                17.h,
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 15.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Havitra Gunalan",
                  style: CustomTextStyles.titleMediumSemiBold,
                ),
                SizedBox(height: 2.v),
                Text(
                  "User role",
                  style: CustomTextStyles.bodyMediumGothicA1WhiteA700,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 15.v),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL20,
              child: CustomImageView(
                imagePath: ImageConstant.imgPhone,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 8.h,
              bottom: 15.v,
            ),
            child: CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.fillBlueGrayTL20,
              child: CustomImageView(
                imagePath: ImageConstant.imgMessageCircle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
