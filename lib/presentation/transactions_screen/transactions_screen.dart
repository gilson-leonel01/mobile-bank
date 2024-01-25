import '../transactions_screen/widgets/arrow_item_widget.dart';
import '../transactions_screen/widgets/balance_item_widget.dart';
import 'models/arrow_item_model.dart';
import 'models/balance_item_model.dart';
import 'models/transactions_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_leading_image.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_title.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_trailing_circleimage.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_elevated_button.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';
import 'package:mobile_bank/widgets/custom_search_view.dart';
import 'provider/transactions_provider.dart';

class TransactionsScreen extends StatefulWidget {
  const TransactionsScreen({Key? key}) : super(key: key);

  @override
  TransactionsScreenState createState() => TransactionsScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => TransactionsProvider(),
        child: TransactionsScreen());
  }
}

class TransactionsScreenState extends State<TransactionsScreen> {
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
                child: Column(children: [
                  _buildAppBar(context),
                  SizedBox(height: 27.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(bottom: 5.v),
                              child: Column(children: [
                                _buildMyCards(context),
                                SizedBox(height: 12.v),
                                _buildBalance(context),
                                SizedBox(height: 27.v),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: EdgeInsets.only(left: 24.h),
                                        child: Text("lbl_my_expense".tr,
                                            style:
                                                theme.textTheme.titleMedium))),
                                SizedBox(height: 12.v),
                                _buildView(context),
                                SizedBox(height: 25.v),
                                _buildAllTransactions(context),
                                SizedBox(height: 39.v),
                                Padding(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 45.h),
                                    child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(bottom: 2.v),
                                              child: CustomIconButton(
                                                  height: 35.adaptSize,
                                                  width: 35.adaptSize,
                                                  padding: EdgeInsets.all(10.h),
                                                  decoration:
                                                      IconButtonStyleHelper
                                                          .outlineRed,
                                                  child: CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgArrow))),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 12.h),
                                              child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                        "msg_spotify_subscription"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .titleSmall),
                                                    SizedBox(height: 4.v),
                                                    Text(
                                                        "msg_28_jan_12_30_am"
                                                            .tr,
                                                        style: theme.textTheme
                                                            .bodySmall)
                                                  ])),
                                          Spacer(),
                                          Padding(
                                              padding: EdgeInsets.symmetric(
                                                  vertical: 10.v),
                                              child: Text("lbl_2_5002".tr,
                                                  style: CustomTextStyles
                                                      .titleSmallRed700))
                                        ])),
                                SizedBox(height: 4.v),
                                _buildArrow(context),
                                SizedBox(height: 31.v),
                                Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgArrowLeft,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(
                                              top: 7.v, bottom: 6.v)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 6.h, top: 7.v, bottom: 6.v),
                                          child: Text("lbl_previous".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      CustomElevatedButton(
                                          height: 30.v,
                                          width: 30.h,
                                          text: "lbl_1".tr,
                                          margin: EdgeInsets.only(left: 10.h),
                                          buttonStyle:
                                              CustomButtonStyles.fillPrimaryTL7,
                                          buttonTextStyle: CustomTextStyles
                                              .labelLargeOnPrimary),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 10.h,
                                              top: 8.v,
                                              bottom: 6.v),
                                          child: Text("lbl_2".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 22.h,
                                              top: 8.v,
                                              bottom: 6.v),
                                          child: Text("lbl_3".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 22.h,
                                              top: 8.v,
                                              bottom: 6.v),
                                          child: Text("lbl_4".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      Padding(
                                          padding: EdgeInsets.only(
                                              left: 22.h,
                                              top: 8.v,
                                              bottom: 6.v),
                                          child: Text("lbl_next".tr,
                                              style:
                                                  theme.textTheme.labelLarge)),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgArrowRight,
                                          height: 16.adaptSize,
                                          width: 16.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 6.h, top: 7.v, bottom: 6.v))
                                    ])
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 7.v),
        decoration: AppDecoration.white,
        child: Column(children: [
          CustomAppBar(
              leadingWidth: 48.h,
              leading: AppbarLeadingImage(
                  imagePath: ImageConstant.imgMegaphone,
                  margin: EdgeInsets.only(left: 24.h, top: 5.v, bottom: 6.v)),
              centerTitle: true,
              title: AppbarTitle(text: "lbl_transactions".tr),
              actions: [
                AppbarTrailingCircleimage(
                    imagePath: ImageConstant.imgEllipse37,
                    margin: EdgeInsets.symmetric(horizontal: 24.h))
              ]),
          SizedBox(height: 20.v),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.h),
              child: Selector<TransactionsProvider, TextEditingController?>(
                  selector: (context, provider) => provider.searchController,
                  builder: (context, searchController, child) {
                    return CustomSearchView(
                        controller: searchController,
                        hintText: "msg_search_for_something".tr);
                  })),
          SizedBox(height: 13.v)
        ]));
  }

  /// Section Widget
  Widget _buildMyCards(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_my_cards".tr, style: theme.textTheme.titleMedium),
          GestureDetector(
              onTap: () {
                onTapTxtSeeAll(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: Text("lbl_see_all".tr,
                      style: CustomTextStyles.titleSmallSemiBold)))
        ]));
  }

  /// Section Widget
  Widget _buildBalance(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: SizedBox(
            height: 170.v,
            child: Consumer<TransactionsProvider>(
                builder: (context, provider, child) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 24.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 20.h);
                  },
                  itemCount:
                      provider.transactionsModelObj.balanceItemList.length,
                  itemBuilder: (context, index) {
                    BalanceItemModel model =
                        provider.transactionsModelObj.balanceItemList[index];
                    return BalanceItemWidget(model);
                  });
            })));
  }

  /// Section Widget
  Widget _buildView(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 17.v),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 62.v),
                  child: Column(children: [
                    Container(
                        height: 93.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(10.h))),
                    SizedBox(height: 11.v),
                    Text("lbl_aug".tr, style: theme.textTheme.bodySmall)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 13.v),
                  child: Column(children: [
                    Container(
                        height: 142.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(10.h))),
                    SizedBox(height: 11.v),
                    Text("lbl_sep".tr, style: theme.textTheme.bodySmall)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 59.v),
                  child: Column(children: [
                    Container(
                        height: 96.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(10.h))),
                    SizedBox(height: 10.v),
                    Text("lbl_oct".tr, style: theme.textTheme.bodySmall)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 106.v),
                  child: Column(children: [
                    Container(
                        height: 49.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(10.h))),
                    SizedBox(height: 10.v),
                    Text("lbl_nov2".tr, style: theme.textTheme.bodySmall)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 8.h, top: 4.v),
                  child: Column(children: [
                    Text("lbl_12_500".tr, style: theme.textTheme.labelLarge),
                    SizedBox(height: 7.v),
                    Container(
                        height: 129.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.primary,
                            borderRadius: BorderRadius.circular(10.h))),
                    SizedBox(height: 10.v),
                    Text("lbl_dec".tr, style: theme.textTheme.bodySmall)
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 9.h, top: 67.v),
                  child: Column(children: [
                    Container(
                        height: 88.v,
                        width: 35.h,
                        decoration: BoxDecoration(
                            color: appTheme.gray10001,
                            borderRadius: BorderRadius.circular(10.h))),
                    SizedBox(height: 10.v),
                    Text("lbl_jan".tr, style: theme.textTheme.bodySmall)
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildAllTransactions(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 24.h),
        padding: EdgeInsets.symmetric(horizontal: 14.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Text("msg_all_transactions".tr,
                      style: theme.textTheme.labelLarge)),
              Padding(
                  padding: EdgeInsets.only(bottom: 8.v),
                  child: Text("lbl_income".tr,
                      style: CustomTextStyles.labelLargeBluegray40001)),
              Padding(
                  padding: EdgeInsets.only(bottom: 7.v),
                  child: Text("lbl_expense".tr,
                      style: CustomTextStyles.labelLargeBluegray40001))
            ]));
  }

  /// Section Widget
  Widget _buildArrow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 45.h),
        decoration: AppDecoration.white
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder17),
        child:
            Consumer<TransactionsProvider>(builder: (context, provider, child) {
          return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return Padding(
                    padding: EdgeInsets.symmetric(vertical: 6.0.v),
                    child: SizedBox(
                        width: 285.h,
                        child: Divider(
                            height: 1.v,
                            thickness: 1.v,
                            color: appTheme.gray10001)));
              },
              itemCount: provider.transactionsModelObj.arrowItemList.length,
              itemBuilder: (context, index) {
                ArrowItemModel model =
                    provider.transactionsModelObj.arrowItemList[index];
                return ArrowItemWidget(model);
              });
        }));
  }

  /// Navigates to the creditCardsScreen when the action is triggered.
  onTapTxtSeeAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.creditCardsScreen,
    );
  }
}
