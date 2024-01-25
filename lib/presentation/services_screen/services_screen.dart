import '../services_screen/widgets/lifeinsurancefilled_item_widget.dart';
import '../services_screen/widgets/loanone_item_widget.dart';
import 'models/lifeinsurancefilled_item_model.dart';
import 'models/loanone_item_model.dart';
import 'models/services_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_leading_image.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_title.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_search_view.dart';
import 'provider/services_provider.dart';

class ServicesScreen extends StatefulWidget {
  const ServicesScreen({Key? key})
      : super(
          key: key,
        );

  @override
  ServicesScreenState createState() => ServicesScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ServicesProvider(),
      child: ServicesScreen(),
    );
  }
}

class ServicesScreenState extends State<ServicesScreen> {
  @override
  void initState() {
    super.initState();
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
              SizedBox(height: 24.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 5.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildLifeInsuranceFilled(context),
                        SizedBox(height: 22.v),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h),
                          child: Text(
                            "msg_bank_services_list".tr,
                            style: CustomTextStyles.titleMediumBluegray800,
                          ),
                        ),
                        SizedBox(height: 12.v),
                        _buildLoanOne(context),
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
              text: "lbl_services".tr,
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
            child: Selector<ServicesProvider, TextEditingController?>(
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

  /// Section Widget
  Widget _buildLifeInsuranceFilled(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 85.v,
        child: Consumer<ServicesProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              padding: EdgeInsets.only(left: 24.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  width: 15.h,
                );
              },
              itemCount:
                  provider.servicesModelObj.lifeinsurancefilledItemList.length,
              itemBuilder: (context, index) {
                LifeinsurancefilledItemModel model = provider
                    .servicesModelObj.lifeinsurancefilledItemList[index];
                return LifeinsurancefilledItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLoanOne(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Consumer<ServicesProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 10.v,
                );
              },
              itemCount: provider.servicesModelObj.loanoneItemList.length,
              itemBuilder: (context, index) {
                LoanoneItemModel model =
                    provider.servicesModelObj.loanoneItemList[index];
                return LoanoneItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ),
    );
  }
}
