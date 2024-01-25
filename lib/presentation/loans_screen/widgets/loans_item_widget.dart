import '../models/loans_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LoansItemWidget extends StatelessWidget {
  LoansItemWidget(
    this.loansItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LoansItemModel loansItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 221.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
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
                  imagePath: loansItemModelObj?.userThirtyTwo,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 12.h,
                  top: 2.v,
                  bottom: 2.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loansItemModelObj.personalLoans!,
                      style: theme.textTheme.bodySmall,
                    ),
                    SizedBox(height: 5.v),
                    Text(
                      loansItemModelObj.price!,
                      style: CustomTextStyles.titleMediumPrimary_1,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
