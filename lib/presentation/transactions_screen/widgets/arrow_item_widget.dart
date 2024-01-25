import '../models/arrow_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ArrowItemWidget extends StatelessWidget {
  ArrowItemWidget(
    this.arrowItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ArrowItemModel arrowItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 8.v,
              bottom: 2.v,
            ),
            child: CustomIconButton(
              height: 35.adaptSize,
              width: 35.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.outlineGreen,
              child: CustomImageView(
                imagePath: arrowItemModelObj?.arrow,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  arrowItemModelObj.freepikSales!,
                  style: theme.textTheme.titleSmall,
                ),
                SizedBox(height: 4.v),
                Text(
                  arrowItemModelObj.time!,
                  style: theme.textTheme.bodySmall,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 17.v,
              bottom: 10.v,
            ),
            child: Text(
              arrowItemModelObj.price!,
              style: CustomTextStyles.titleSmallGreen600_1,
            ),
          ),
        ],
      ),
    );
  }
}
