import 'package:flutter/material.dart';
import 'package:youthappoint/core/app_export.dart';
import 'package:youthappoint/presentation/applied_jobs_page/applied_jobs_page.dart';
import 'package:youthappoint/presentation/available_jobs_tab_container_page/available_jobs_tab_container_page.dart';
import 'package:youthappoint/presentation/liked_jobs_page/liked_jobs_page.dart';
import 'package:youthappoint/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:youthappoint/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:youthappoint/widgets/app_bar/custom_app_bar.dart';
import 'package:youthappoint/widgets/custom_bottom_bar.dart';

class LikedJobsTabContainerScreen extends StatefulWidget {
  const LikedJobsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LikedJobsTabContainerScreenState createState() =>
      LikedJobsTabContainerScreenState();
}

class LikedJobsTabContainerScreenState
    extends State<LikedJobsTabContainerScreen> with TickerProviderStateMixin {
  late TabController tabviewController;

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildNavigationBar(context),
              SizedBox(
                height: 684.v,
                child: TabBarView(
                  controller: tabviewController,
                  children: [
                    LikedJobsPage(),
                    AppliedJobsPage(),
                    LikedJobsPage(),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillRed,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
            margin: EdgeInsets.only(left: 64.h),
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
                  child: Text(
                    "Available",
                  ),
                ),
                Tab(
                  child: Text(
                    "Applied",
                  ),
                ),
                Tab(
                  child: Text(
                    "Liked",
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Iconbutton:
        return AppRoutes.availableJobsTabContainerPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.availableJobsTabContainerPage:
        return AvailableJobsTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
