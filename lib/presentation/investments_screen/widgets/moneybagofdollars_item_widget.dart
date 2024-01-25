import '../models/moneybagofdollars_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MoneybagofdollarsItemWidget extends StatelessWidget {
  MoneybagofdollarsItemWidget(
    this.moneybagofdollarsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MoneybagofdollarsItemModel moneybagofdollarsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder17,
      ),
      child: Row(
        children: [
          CustomIconButton(
            height: 45.adaptSize,
            width: 45.adaptSize,
            padding: EdgeInsets.all(12.h),
            decoration: IconButtonStyleHelper.fillGrayTL22,
            child: CustomImageView(
              imagePath: moneybagofdollarsItemModelObj?.moneyBagOfDollars,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  moneybagofdollarsItemModelObj.totalInvestedAmount!,
                  style: theme.textTheme.bodySmall,
                ),
                SizedBox(height: 6.v),
                Text(
                  moneybagofdollarsItemModelObj.price!,
                  style: CustomTextStyles.titleMediumPrimary_1,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
