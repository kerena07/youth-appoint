import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/widgets/custom_icon_button.dart';

class AppliedJobsPage extends StatefulWidget {
  const AppliedJobsPage({Key? key}) : super(key: key);

  @override
  AppliedJobsPageState createState() => AppliedJobsPageState();
}

class AppliedJobsPageState extends State<AppliedJobsPage>
    with AutomaticKeepAliveClientMixin<AppliedJobsPage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.outlineBlueGrayD,
                child: Column(children: [
                  SizedBox(height: 24.v),
                  _buildThirtyNine(context)
                ]))));
  }

  /// Section Widget
  Widget _buildThirtyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(children: [
          _buildCard(context,
              description:
                  "Job Title\nDetails:\nomnis voluptas assumenda est, omnis dolor repellendus. ",
              cardDescription: "Status: Pending...", onTapCard: () {
            onTapCard(context);
          }),
          SizedBox(height: 16.v),
          _buildCard(context,
              description:
                  "Job Title\nDetails:\nomnis voluptas assumenda est, omnis dolor repellendus. ",
              cardDescription: "Status: Rejected")
        ]));
  }

  /// Common widget
  Widget _buildCard(
    BuildContext context, {
    required String description,
    required String cardDescription,
    Function? onTapCard,
  }) {
    return GestureDetector(
        onTap: () {
          onTapCard!.call();
        },
        child: Container(
            padding: EdgeInsets.all(16.h),
            decoration: AppDecoration.fillBlueGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
            child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder12),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 265.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "Job Title\n",
                                      style:
                                          CustomTextStyles.titleMediumffffffff),
                                  TextSpan(
                                      text: "Details:\n",
                                      style: theme.textTheme.titleSmall),
                                  TextSpan(
                                      text:
                                          "omnis voluptas assumenda est, omnis dolor repellendus.",
                                      style: CustomTextStyles
                                          .bodyMediumGothicA1ffffffff),
                                  TextSpan(text: " ")
                                ]),
                                textAlign: TextAlign.left)),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "Status: ",
                                  style: CustomTextStyles
                                      .bodyMediumGothicA1b2ffffff),
                              TextSpan(
                                  text: "Rejected",
                                  style: CustomTextStyles
                                      .bodyMediumGothicA1b2ff3c3c)
                            ]),
                            textAlign: TextAlign.left)
                      ]),
                  Padding(
                      padding:
                          EdgeInsets.only(left: 21.h, top: 37.v, bottom: 36.v),
                      child: CustomIconButton(
                          height: 40.adaptSize,
                          width: 40.adaptSize,
                          padding: EdgeInsets.all(8.h),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgArrowRight)))
                ]))));
  }

  /// Navigates to the jobScreen when the action is triggered.
  onTapCard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.jobScreen);
  }
}
