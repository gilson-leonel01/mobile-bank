import 'models/setting_security_model.dart';
import 'package:flutter/material.dart';
import 'package:mobile_bank/core/app_export.dart';
import 'package:mobile_bank/core/utils/validation_functions.dart';
import 'package:mobile_bank/widgets/custom_elevated_button.dart';
import 'package:mobile_bank/widgets/custom_switch.dart';
import 'package:mobile_bank/widgets/custom_text_form_field.dart';
import 'provider/setting_security_provider.dart';

// ignore_for_file: must_be_immutable
class SettingSecurityPage extends StatefulWidget {
  const SettingSecurityPage({Key? key})
      : super(
          key: key,
        );

  @override
  SettingSecurityPageState createState() => SettingSecurityPageState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SettingSecurityProvider(),
      child: SettingSecurityPage(),
    );
  }
}

class SettingSecurityPageState extends State<SettingSecurityPage>
    with AutomaticKeepAliveClientMixin<SettingSecurityPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;
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
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray,
                child: Column(
                  children: [
                    SizedBox(height: 23.v),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "msg_two_factor_authentication".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 10.v),
                          Padding(
                            padding: EdgeInsets.only(right: 72.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Selector<SettingSecurityProvider, bool?>(
                                  selector: (
                                    context,
                                    provider,
                                  ) =>
                                      provider.isSelectedSwitch,
                                  builder: (context, isSelectedSwitch, child) {
                                    return CustomSwitch(
                                      margin: EdgeInsets.only(
                                        top: 5.v,
                                        bottom: 6.v,
                                      ),
                                      value: isSelectedSwitch,
                                      onChange: (value) {
                                        context
                                            .read<SettingSecurityProvider>()
                                            .changeSwitchBox1(value);
                                      },
                                    );
                                  },
                                ),
                                Expanded(
                                  child: Container(
                                    width: 159.h,
                                    margin: EdgeInsets.only(left: 12.h),
                                    child: Text(
                                      "msg_enable_or_disable".tr,
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style:
                                          theme.textTheme.bodySmall!.copyWith(
                                        height: 1.50,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 17.v),
                          Text(
                            "lbl_change_password".tr,
                            style: theme.textTheme.titleSmall,
                          ),
                          SizedBox(height: 11.v),
                          _buildInputField7(context),
                          SizedBox(height: 18.v),
                          _buildInputField8(context),
                          SizedBox(height: 20.v),
                          CustomElevatedButton(
                            height: 40.v,
                            text: "lbl_save".tr,
                            buttonStyle: CustomButtonStyles.fillPrimaryTL20,
                            buttonTextStyle:
                                CustomTextStyles.titleMediumOnPrimary,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputField7(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_current_password".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Selector<SettingSecurityProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.passwordController,
          builder: (context, passwordController, child) {
            return CustomTextFormField(
              controller: passwordController,
              hintText: "lbl_charlene_123".tr,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildInputField8(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_new_password".tr,
          style: theme.textTheme.bodySmall,
        ),
        SizedBox(height: 8.v),
        Selector<SettingSecurityProvider, TextEditingController?>(
          selector: (
            context,
            provider,
          ) =>
              provider.newpasswordController,
          builder: (context, newpasswordController, child) {
            return CustomTextFormField(
              controller: newpasswordController,
              hintText: "lbl_charlene_123".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: true,
            );
          },
        ),
      ],
    );
  }
}
