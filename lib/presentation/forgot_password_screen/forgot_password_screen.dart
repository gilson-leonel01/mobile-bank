import 'models/forgot_password_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/core/utils/validation_functions.dart';
import 'package:mobile_bank/widgets/app_bar/appbar_leading_image.dart';
import 'package:mobile_bank/widgets/app_bar/custom_app_bar.dart';
import 'package:mobile_bank/widgets/custom_elevated_button.dart';
import 'package:mobile_bank/widgets/custom_text_form_field.dart';
import 'provider/forgot_password_provider.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  ForgotPasswordScreenState createState() => ForgotPasswordScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ForgotPasswordProvider(),
        child: ForgotPasswordScreen());
  }
}

// ignore_for_file: must_be_immutable
class ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    NavigatorService.pushNamed(
      AppRoutes.otpScreen,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: Container(
                            width: double.maxFinite,
                            padding: EdgeInsets.only(
                                left: 16.h, top: 76.v, right: 16.h),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("lbl_forgot_password".tr,
                                      style: theme.textTheme.headlineMedium),
                                  SizedBox(height: 11.v),
                                  Container(
                                      width: 311.h,
                                      margin: EdgeInsets.only(right: 31.h),
                                      child: Text("msg_please_enter_your".tr,
                                          maxLines: 3,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .titleSmallBluegray40001
                                              .copyWith(height: 1.50))),
                                  SizedBox(height: 21.v),
                                  Selector<ForgotPasswordProvider,
                                          TextEditingController?>(
                                      selector: (context, provider) =>
                                          provider.newpasswordController,
                                      builder: (context, newpasswordController,
                                          child) {
                                        return CustomTextFormField(
                                            controller: newpasswordController,
                                            hintText: "lbl_email_id".tr,
                                            textInputAction:
                                                TextInputAction.done,
                                            textInputType:
                                                TextInputType.emailAddress,
                                            validator: (value) {
                                              if (value == null ||
                                                  (!isValidEmail(value,
                                                      isRequired: true))) {
                                                return "err_msg_please_enter_valid_email"
                                                    .tr;
                                              }
                                              return null;
                                            },
                                            contentPadding:
                                                EdgeInsets.symmetric(
                                                    horizontal: 16.h,
                                                    vertical: 15.v),
                                            borderDecoration:
                                                TextFormFieldStyleHelper
                                                    .fillIndigo,
                                            fillColor: appTheme.indigo50);
                                      }),
                                  SizedBox(height: 40.v),
                                  CustomElevatedButton(
                                      text: "lbl_continue".tr,
                                      onPressed: () {
                                        onTapContinue(context);
                                      }),
                                  SizedBox(height: 5.v)
                                ])))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(30.h, 17.v, 329.h, 17.v)));
  }

  /// Navigates to the otpScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.otpScreen,
    );
  }
}
