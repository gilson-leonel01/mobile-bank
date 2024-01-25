import '../models/balanceslider_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';

// ignore: must_be_immutable
class BalancesliderItemWidget extends StatelessWidget {
  BalancesliderItemWidget(
    this.balancesliderItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BalancesliderItemModel balancesliderItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Container(
        decoration: AppDecoration.fillPrimary.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder17,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 17.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      balancesliderItemModelObj.balance!,
                      style: theme.textTheme.labelMedium,
                    ),
                    SizedBox(height: 3.v),
                    Text(
                      balancesliderItemModelObj.fiveThousandSevenHundredFiftyS!,
                      style: CustomTextStyles.titleMediumOnPrimary_1,
                    ),
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgChipCard,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  margin: EdgeInsets.only(
                    left: 141.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                ),
              ],
            ),
            SizedBox(height: 17.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 20.h),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          balancesliderItemModelObj.cardholder!,
                          style: theme.textTheme.labelMedium,
                        ),
                        SizedBox(height: 1.v),
                        Text(
                          balancesliderItemModelObj.eddyCusuma!,
                          style: CustomTextStyles.titleSmallOnPrimary,
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 41.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            balancesliderItemModelObj.validthru!,
                            style: theme.textTheme.labelMedium,
                          ),
                          SizedBox(height: 1.v),
                          Text(
                            balancesliderItemModelObj
                                .oneThousandTwoHundredTwentyTwo!,
                            style: CustomTextStyles.titleSmallOnPrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 11.v),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 16.v,
              ),
              decoration: AppDecoration.gradientOnPrimaryToOnPrimary.copyWith(
                borderRadius: BorderRadiusStyle.customBorderBL15,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      balancesliderItemModelObj.thirtySevenMillionSevenHundred!,
                      style: CustomTextStyles.titleSmallOnPrimary_1,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUserOnprimary,
                    height: 18.v,
                    width: 27.h,
                    margin: EdgeInsets.only(left: 60.h),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
