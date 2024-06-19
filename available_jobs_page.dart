import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/custom_icon_button.dart';

class AvailableJobsPage extends StatefulWidget {
  const AvailableJobsPage({Key? key})
      : super(
          key: key,
        );

  @override
  AvailableJobsPageState createState() => AvailableJobsPageState();
}

class AvailableJobsPageState extends State<AvailableJobsPage>
    with AutomaticKeepAliveClientMixin<AvailableJobsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildCard(context),
                      SizedBox(height: 16.v),
                      _buildCardStack(context),
                      SizedBox(height: 16.v),
                      _buildCardColumn(
                        context,
                        cardHeadline: "Card header",
                        cardDescription: "This is a card description",
                      ),
                      SizedBox(height: 16.v),
                      _buildCardColumn(
                        context,
                        cardHeadline: "Card header",
                        cardDescription: "This is a card description",
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildCard(BuildContext context) {
    return Container(
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
                    SizedBox(height: 3.v),
                    Text(
                      "RM 1000- 3500",
                      style: CustomTextStyles.bodyMediumGothicA1WhiteA700,
                    ),
                  ],
                ),
                Spacer(
                  flex: 33,
                ),
                CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgHeartOutline,
                  ),
                ),
                Spacer(
                  flex: 66,
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

  /// Section Widget
  Widget _buildCardStack(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.blueGray900,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Container(
        height: 275.v,
        width: 358.h,
        decoration: AppDecoration.fillBlueGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder12,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage199x358,
              height: 199.v,
              width: 358.h,
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgJob1,
                    height: 183.v,
                    width: 358.h,
                  ),
                  SizedBox(height: 16.v),
                  SizedBox(
                    height: 42.v,
                    width: 326.h,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Job Title",
                                      style:
                                          CustomTextStyles.titleMediumSemiBold,
                                    ),
                                    SizedBox(height: 2.v),
                                    Text(
                                      "Estimated Commission",
                                      style: CustomTextStyles
                                          .bodyMediumGothicA1WhiteA700,
                                    ),
                                  ],
                                ),
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgArrowRightWhiteA700,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                                radius: BorderRadius.circular(
                                  20.h,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          alignment: Alignment.topCenter,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgHeartOutline,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildCardColumn(
    BuildContext context, {
    required String cardHeadline,
    required String cardDescription,
  }) {
    return Container(
      decoration: AppDecoration.fillBlueGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder12,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 199.v,
            width: 358.h,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage199x358,
                  height: 199.v,
                  width: 358.h,
                  alignment: Alignment.center,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 16.v,
                    right: 16.h,
                  ),
                  child: CustomIconButton(
                    height: 32.adaptSize,
                    width: 32.adaptSize,
                    padding: EdgeInsets.all(6.h),
                    decoration: IconButtonStyleHelper.fillBlueGray,
                    alignment: Alignment.topRight,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgMoreHorizontal,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      cardHeadline,
                      style: CustomTextStyles.titleMediumSemiBold.copyWith(
                        color: appTheme.whiteA700,
                      ),
                    ),
                    Text(
                      cardDescription,
                      style:
                          CustomTextStyles.bodyMediumGothicA1WhiteA700.copyWith(
                        color: appTheme.whiteA700.withOpacity(0.7),
                      ),
                    ),
                    SizedBox(height: 8.v),
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgStar24pxLight,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar24pxLight,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar24pxLight,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar24pxLight,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStar24pxLightWhiteA700,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
                        ),
                      ],
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 8.h,
                    top: 16.v,
                    bottom: 16.v,
                  ),
                  child: CustomIconButton(
                    height: 40.adaptSize,
                    width: 40.adaptSize,
                    padding: EdgeInsets.all(8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgArrowRight,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
