import '../models/loanone_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LoanoneItemWidget extends StatelessWidget {
  LoanoneItemWidget(
    this.loanoneItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  LoanoneItemModel loanoneItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.all(12.h),
        decoration: AppDecoration.white.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 45.adaptSize,
              width: 45.adaptSize,
              padding: EdgeInsets.all(12.h),
              child: CustomImageView(
                imagePath: loanoneItemModelObj?.loanOne,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 12.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    loanoneItemModelObj.businessLoans!,
                    style: theme.textTheme.titleSmall,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    loanoneItemModelObj.itisalongestablished!,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
            Spacer(),
            Padding(
              padding: EdgeInsets.only(
                top: 15.v,
                bottom: 16.v,
              ),
              child: Text(
                loanoneItemModelObj.viewDetails!,
                style: CustomTextStyles.labelMediumIndigo500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
