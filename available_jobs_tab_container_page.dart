import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/presentation/available_jobs_page/available_jobs_page.dart';
import 'package:youthappoint/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:youthappoint/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:youthappoint/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class AvailableJobsTabContainerPage extends StatefulWidget {
  const AvailableJobsTabContainerPage({Key? key}) : super(key: key);

  @override
  AvailableJobsTabContainerPageState createState() =>
      AvailableJobsTabContainerPageState();
}

class AvailableJobsTabContainerPageState
    extends State<AvailableJobsTabContainerPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineBlueGrayD,
          child: Column(
            children: [
              _buildNavigationBar(context),
              Expanded(
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 590.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        AvailableJobsPage(),
                        AvailableJobsPage(),
                        AvailableJobsPage(),
                      ],
                    ),
                  ),
                ),
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
      child: Column(
        children: [
          CustomAppBar(
            title: AppbarSubtitleOne(
              text: "YOUTH APPOINT",
              margin: EdgeInsets.only(left: 16.h),
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgSearch,
                margin: EdgeInsets.only(
                  left: 8.h,
                  top: 14.v,
                  right: 22.h,
                ),
              ),
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgMoreHorizontal,
                margin: EdgeInsets.only(
                  left: 4.h,
                  top: 14.v,
                  right: 30.h,
                ),
              ),
            ],
          ),
          SizedBox(height: 8.v),
          Container(
            height: 32.v,
            width: 249.h,
            child: TabBar(
              controller: tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: appTheme.red900,
              labelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Gothic A1',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: appTheme.red900,
              unselectedLabelStyle: TextStyle(
                fontSize: 16.fSize,
                fontFamily: 'Gothic A1',
                fontWeight: FontWeight.w400,
              ),
              indicator: BoxDecoration(
                color: appTheme.whiteA700,
                borderRadius: BorderRadius.circular(
                  16.h,
                ),
              ),
              tabs: [
                Tab(
                  child: Text("Available"),
                ),
                Tab(
                  child: Text("Applied"),
                ),
                Tab(
                  child: Text("Liked"),
                ),
              ],
              onTap: (index) {
                // Handle tab taps
                if (index == 2) {
                  Navigator.pushNamed(
                      context, AppRoutes.likedJobsTabContainerScreen);
                }
              },
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }
}
