import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:user_app/controller/auth/register/register_controller.dart';
import 'package:user_app/utils/custom_text_style.dart';
import 'package:user_app/views/auth/login/login_screen.dart';
import 'package:user_app/widgets/custom/elevated_button.dart';

import '../../../utils/colors.dart';
import '../../../utils/validator.dart';
import '../../../widgets/custom/custom_password_fields.dart';
import '../../../widgets/custom/custom_textfield.dart';

class RegisterScreen extends StatelessWidget {
  static const String routeName = "/register";
  RegisterScreen({super.key});
  final c = Get.find<RegisterController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Form(
              key: c.formKey,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 30, horizontal: 22),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Register",
                      style: CustomTextStyles.f16W600(),
                    ),
                    const SizedBox(
                      height: 29,
                    ),
                    
                    const SizedBox(
                      height: 22,
                    ),
                    const Center(
                      child: Text("OR"),
                    ),
                    const SizedBox(
                      height: 22,
                    ),
                    CustomTextField(
                      validator: Validators.checkFieldEmpty,
                      controller: c.nameController,
                      hint: "Enter Full Name",
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.name,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CustomTextField(
                      validator: Validators.checkEmailField,
                      controller: c.emailController,
                      hint: "Enter Email",
                      textInputAction: TextInputAction.next,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    IntlPhoneField(
                      controller: c.phoneNumberController,
                      //validator: Validators.checkPhoneField,
                      decoration: InputDecoration(
                        hintText: "Enter Phone No",
                        enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: AppColors.secondaryTextColor),
                        ),
                        focusedErrorBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: AppColors.errorColor),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(
                              width: 1, color: AppColors.primaryColor),
                        ),
                        errorBorder: const OutlineInputBorder(
                          borderSide:
                              BorderSide(width: 1, color: AppColors.errorColor),
                        ),
                        hintStyle: CustomTextStyles.f16W400(
                            color: AppColors.secondaryTextColor),
                      ),
                      style: CustomTextStyles.f16W400(
                        color: (AppColors.textColor),
                      ),
                      dropdownTextStyle: const TextStyle(
                          // color: color,
                          fontFamily: "Poppins",
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                      initialCountryCode: 'NP',
                      showDropdownIcon: false,

                      onChanged: (phone) {
                        print(phone.completeNumber);
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Obx(
                      () => CustomPasswordField(
                        validator: Validators.checkPasswordField,
                        hint: "Enter Password",
                        eye: c.passwordObscure.value,
                        onEyeClick: c.passwordOnEyeCLick,
                        controller: c.passwordController,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Obx(
                      () => CustomPasswordField(
                        validator: Validators.checkPasswordField,
                        hint: "Enter Confirm Password",
                        eye: c.confirmObscure.value,
                        onEyeClick: c.confirmPasswordOnEyeCLick,
                        controller: c.confirmPasswordController,
                        textInputAction: TextInputAction.done,
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    CustomElevatedButton(
                      title: "Register",
                      onTap: () {
                        c.onSubmit();
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(LogInScreen.routeName);
                          },
                          child: Row(
                            children: [
                              Text(
                                "Already have a account? ",
                                style: CustomTextStyles.f16W400(),
                              ),
                              Text(
                                "Login",
                                style: CustomTextStyles.f16W400(
                                    color: AppColors.primaryColor),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30)
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
