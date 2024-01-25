import 'models/setting_preference_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/presentation/setting_edit_profile_page/setting_edit_profile_page.dart';
import 'package:mobile_bank/presentation/setting_preference_page/setting_preference_page.dart';
import 'package:mobile_bank/presentation/setting_security_page/setting_security_page.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_leading_image.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_title.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_search_view.dart';
import 'provider/setting_preference_tab_container_provider.dart';

class SettingPreferenceTabContainerScreen extends StatefulWidget {
  const SettingPreferenceTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  SettingPreferenceTabContainerScreenState createState() =>
      SettingPreferenceTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingPreferenceTabContainerProvider(),
      child: SettingPreferenceTabContainerScreen(),
    );
  }
}

class SettingPreferenceTabContainerScreenState
    extends State<SettingPreferenceTabContainerScreen>
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
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildHeader(context),
              SizedBox(height: 44.v),
              Expanded(
                child: SizedBox(
                  width: double.maxFinite,
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 24.h),
                    decoration: AppDecoration.white.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder17,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        SizedBox(
                          height: 24.v,
                          width: 285.h,
                          child: TabBar(
                            controller: tabviewController,
                            labelPadding: EdgeInsets.zero,
                            labelColor: theme.colorScheme.primary,
                            labelStyle: TextStyle(
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                            unselectedLabelColor: appTheme.blueGray40001,
                            unselectedLabelStyle: TextStyle(
                              fontSize: 12.fSize,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w500,
                            ),
                            indicatorColor: theme.colorScheme.primary,
                            tabs: [
                              Tab(
                                child: Text(
                                  "lbl_edit_profile".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_preference".tr,
                                ),
                              ),
                              Tab(
                                child: Text(
                                  "lbl_security".tr,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 415.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                SettingEditProfilePage.builder(context),
                                SettingPreferencePage.builder(context),
                                SettingSecurityPage.builder(context),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeader(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 7.v),
      decoration: AppDecoration.white,
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 48.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgMegaphone,
              margin: EdgeInsets.only(
                left: 24.h,
                top: 5.v,
                bottom: 6.v,
              ),
            ),
            centerTitle: true,
            title: AppbarTitle(
              text: "lbl_setting".tr,
            ),
            actions: [
              AppbarTrailingCircleimage(
                imagePath: ImageConstant.imgEllipse37,
                margin: EdgeInsets.symmetric(horizontal: 24.h),
              ),
            ],
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Selector<SettingPreferenceTabContainerProvider,
                TextEditingController?>(
              selector: (
                context,
                provider,
              ) =>
                  provider.searchController,
              builder: (context, searchController, child) {
                return CustomSearchView(
                  controller: searchController,
                  hintText: "msg_search_for_something".tr,
                );
              },
            ),
          ),
          SizedBox(height: 13.v),
        ],
      ),
    );
  }
}
