import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class LikedJobsPage extends StatefulWidget {
  const LikedJobsPage({Key? key})
      : super(
          key: key,
        );

  @override
  LikedJobsPageState createState() => LikedJobsPageState();
}

class LikedJobsPageState extends State<LikedJobsPage>
    with AutomaticKeepAliveClientMixin<LikedJobsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlueGrayD,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              _buildCard(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage,
            height: 199.v,
            width: 358.h,
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Job Title",
                      style: CustomTextStyles.titleMediumSemiBold,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Job Description",
                      style: CustomTextStyles.bodyMediumGothicA1WhiteA700,
                    ),
                  ],
                ),
                Spacer(
                  flex: 31,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 21.v,
                  width: 25.h,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 14.v,
                  ),
                ),
                Spacer(
                  flex: 68,
                ),
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowRight,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
        ],
      ),
    );
  }
}
