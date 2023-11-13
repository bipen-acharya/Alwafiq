import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:user_app/controller/auth/login/login_controller.dart';
import 'package:user_app/utils/custom_text_style.dart';
import 'package:user_app/utils/validator.dart';
import 'package:user_app/widgets/custom/custom_password_fields.dart';
import 'package:user_app/widgets/custom/custom_textfield.dart';
import 'package:user_app/widgets/custom/elevated_button.dart';

class LogInScreen extends StatelessWidget {
  static const String routeName = "/login";
  LogInScreen({super.key});

  final c = Get.put(LogInController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: Get.height,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/common/images/bg.png"),
                        fit: BoxFit.fill),
                  ),
                ),
                Positioned(
                  top: Get.width / 6,
                  right: 20,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: Get.height / 8,
                      ),
                      const Text(
                        "Welcome To Alwafiq",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      SizedBox(
                        height: Get.width / 6,
                      ),
                      Container(
                        width: Get.width / 1.1,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 16, vertical: 21),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: const Color.fromARGB(255, 246, 246, 246),
                            boxShadow: const [
                              BoxShadow(
                                  offset: Offset(
                                    4,
                                    4,
                                  ),
                                  blurRadius: 2,
                                  spreadRadius: 1,
                                  color: Color.fromARGB(255, 255, 255, 255))
                            ]),
                        child: Form(
                          key: c.formKey,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Login",
                                style: CustomTextStyles.f32W600(),
                              ),
                              const SizedBox(
                                height: 28,
                              ),
                              CustomTextField(
                                  controller: c.emailController,
                                  hint: "Email",
                                  validator: Validators.checkEmailField,
                                  textInputAction: TextInputAction.next,
                                  textInputType: TextInputType.emailAddress),
                              const SizedBox(
                                height: 16,
                              ),
                              Obx(
                                () => CustomPasswordField(
                                    hint: "Password",
                                    eye: c.passwordObscure.value,
                                    onEyeClick: c.onEyeCLick,
                                    controller: c.passwordController,
                                    textInputAction: TextInputAction.done),
                              ),
                              const SizedBox(
                                height: 16,
                              ),
                              // TextButton(
                              //   onPressed: () {
                              //     // Get.offNamed(ForgetPasswordScreen.routeName);
                              //   },
                              //   child: Text(
                              //     "Forget Password?",
                              //     style: CustomTextStyles.f16W400(
                              //         color: AppColors.primaryColor),
                              //   ),
                              // ),
                              const SizedBox(
                                height: 16,
                              ),
                              CustomElevatedButton(
                                title: "Log In",
                                onTap: c.onSubmit,
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            // Text("Jhdskas")
          ],
        ));
  }
}

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path_0 = Path();
    // Path path_0 = Path();
    path_0.moveTo(118, 388.5);
    path_0.cubicTo(27.5, 321.5, 13, 311, 0, 301.5);
    path_0.lineTo(0, 0);
    path_0.lineTo(393, 0);
    path_0.lineTo(393, 583.5);
    path_0.cubicTo(393, 583.5, 208.207, 455.283, 118, 388.5);
    path_0.close();

    return path_0;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
