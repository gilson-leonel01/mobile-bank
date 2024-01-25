import '../investments_screen/widgets/applestore_item_widget.dart';
import '../investments_screen/widgets/moneybagofdollars_item_widget.dart';
import 'models/applestore_item_model.dart';
import 'models/investments_model.dart';
import 'models/moneybagofdollars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_leading_image.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_title.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_search_view.dart';
import 'provider/investments_provider.dart';

class InvestmentsScreen extends StatefulWidget {
  const InvestmentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  InvestmentsScreenState createState() => InvestmentsScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => InvestmentsProvider(),
      child: InvestmentsScreen(),
    );
  }
}

class InvestmentsScreenState extends State<InvestmentsScreen> {
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
                  child: Container(
                    margin: EdgeInsets.only(bottom: 5.v),
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildMoneyBagOfDollars(context),
                        SizedBox(height: 27.v),
                        Text(
                          "msg_yearly_total_investment".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildChart(
                          context,
                          price1: "lbl_40_000".tr,
                          price2: "lbl_30_000".tr,
                          price3: "lbl_20_000".tr,
                          price4: "lbl_10_000".tr,
                          price5: "lbl_02".tr,
                          image: ImageConstant.imgGroup1045,
                          zipcode: "lbl_2016".tr,
                          zipcode1: "lbl_2017".tr,
                          zipcode2: "lbl_2018".tr,
                          zipcode3: "lbl_2019".tr,
                          zipcode4: "lbl_2020".tr,
                          zipcode5: "lbl_2021".tr,
                        ),
                        SizedBox(height: 27.v),
                        Text(
                          "lbl_monthly_revenue".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildChart(
                          context,
                          price1: "lbl_40_000".tr,
                          price2: "lbl_30_000".tr,
                          price3: "lbl_20_000".tr,
                          price4: "lbl_10_000".tr,
                          price5: "lbl_02".tr,
                          image: ImageConstant.imgGroup1049,
                          zipcode: "lbl_2016".tr,
                          zipcode1: "lbl_2017".tr,
                          zipcode2: "lbl_2018".tr,
                          zipcode3: "lbl_2019".tr,
                          zipcode4: "lbl_2020".tr,
                          zipcode5: "lbl_2021".tr,
                        ),
                        SizedBox(height: 27.v),
                        Text(
                          "lbl_my_investment".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildAppleStore(context),
                        SizedBox(height: 27.v),
                        Text(
                          "lbl_trending_stock".tr,
                          style: theme.textTheme.titleMedium,
                        ),
                        SizedBox(height: 12.v),
                        _buildSlNo(context),
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
              text: "lbl_investments".tr,
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
            child: Selector<InvestmentsProvider, TextEditingController?>(
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
  Widget _buildMoneyBagOfDollars(BuildContext context) {
    return Consumer<InvestmentsProvider>(
      builder: (context, provider, child) {
        return ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 16.v,
            );
          },
          itemCount:
              provider.investmentsModelObj.moneybagofdollarsItemList.length,
          itemBuilder: (context, index) {
            MoneybagofdollarsItemModel model =
                provider.investmentsModelObj.moneybagofdollarsItemList[index];
            return MoneybagofdollarsItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppleStore(BuildContext context) {
    return Consumer<InvestmentsProvider>(
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
          itemCount: provider.investmentsModelObj.applestoreItemList.length,
          itemBuilder: (context, index) {
            ApplestoreItemModel model =
                provider.investmentsModelObj.applestoreItemList[index];
            return ApplestoreItemWidget(
              model,
            );
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildSlNo(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Padding(
            padding: EdgeInsets.only(right: 20.h),
            child: Row(
              children: [
                Text(
                  "lbl_sl_no".tr,
                  style: CustomTextStyles.labelLargeBluegray40001,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text(
                    "lbl_name".tr,
                    style: CustomTextStyles.labelLargeBluegray40001,
                  ),
                ),
                Spacer(
                  flex: 52,
                ),
                Text(
                  "lbl_price".tr,
                  style: CustomTextStyles.labelLargeBluegray40001,
                ),
                Spacer(
                  flex: 47,
                ),
                Text(
                  "lbl_return".tr,
                  style: CustomTextStyles.labelLargeBluegray40001,
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            color: appTheme.gray100,
          ),
          SizedBox(height: 10.v),
          Padding(
            padding: EdgeInsets.only(right: 32.h),
            child: _buildFour(
              context,
              four: "lbl_01".tr,
              nokia: "lbl_trivago".tr,
              price: "lbl_520".tr,
              two: "lbl_5".tr,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.only(right: 26.h),
            child: Row(
              children: [
                Text(
                  "lbl_022".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 24,
                ),
                Text(
                  "lbl_canon".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 39,
                ),
                Text(
                  "lbl_480".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 36,
                ),
                Text(
                  "lbl_10".tr,
                  style: CustomTextStyles.labelLargeTealA400,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 35.h),
            child: Row(
              children: [
                Text(
                  "lbl_03".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 28,
                ),
                Text(
                  "lbl_uber_food".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 27,
                ),
                Text(
                  "lbl_350".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 43,
                ),
                Text(
                  "lbl_32".tr,
                  style: CustomTextStyles.labelLargePinkA200,
                ),
              ],
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 32.h),
            child: _buildFour(
              context,
              four: "lbl_04".tr,
              nokia: "lbl_nokia".tr,
              price: "lbl_940".tr,
              two: "lbl_22".tr,
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(right: 29.h),
            child: Row(
              children: [
                Text(
                  "lbl_05".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 24,
                ),
                Text(
                  "lbl_tiktok".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 39,
                ),
                Text(
                  "lbl_670".tr,
                  style: CustomTextStyles.bodySmallBluegray600,
                ),
                Spacer(
                  flex: 36,
                ),
                Text(
                  "lbl_12".tr,
                  style: CustomTextStyles.labelLargePinkA200,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildChart(
    BuildContext context, {
    required String price1,
    required String price2,
    required String price3,
    required String price4,
    required String price5,
    required String image,
    required String zipcode,
    required String zipcode1,
    required String zipcode2,
    required String zipcode3,
    required String zipcode4,
    required String zipcode5,
  }) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 19.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 2.v,
              bottom: 20.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price1,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  price2,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  price3,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 24.v),
                Text(
                  price4,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
                SizedBox(height: 23.v),
                Text(
                  price5,
                  style: theme.textTheme.bodySmall!.copyWith(
                    color: appTheme.blueGray40001,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 5.h,
                top: 13.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: image,
                    height: 157.v,
                    width: 232.h,
                  ),
                  SizedBox(height: 8.v),
                  Padding(
                    padding: EdgeInsets.only(right: 3.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          zipcode,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode1,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode2,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode3,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode4,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                        Text(
                          zipcode5,
                          style: theme.textTheme.bodySmall!.copyWith(
                            color: appTheme.blueGray40001,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildFour(
    BuildContext context, {
    required String four,
    required String nokia,
    required String price,
    required String two,
  }) {
    return Row(
      children: [
        Text(
          four,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 23,
        ),
        Text(
          nokia,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 41,
        ),
        Text(
          price,
          style: CustomTextStyles.bodySmallBluegray600.copyWith(
            color: appTheme.blueGray600,
          ),
        ),
        Spacer(
          flex: 35,
        ),
        Text(
          two,
          style: CustomTextStyles.labelLargeTealA400.copyWith(
            color: appTheme.tealA400,
          ),
        ),
      ],
    );
  }
}
