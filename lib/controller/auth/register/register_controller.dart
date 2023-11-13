import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:simple_fontellico_progress_dialog/simple_fontico_loading.dart';

class RegisterController extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  RxBool passwordObscure = false.obs;
  RxBool confirmObscure = false.obs;

  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final phoneNumberController = TextEditingController();

  RxBool isChecked = false.obs;
  void passwordOnEyeCLick() {
    passwordObscure.value = !passwordObscure.value;
  }

  void confirmPasswordOnEyeCLick() {
    confirmObscure.value = !confirmObscure.value;
  }

  final loading = SimpleFontelicoProgressDialog(
      context: Get.context!, barrierDimisable: false);

  void onSubmit() async {
    // if (formKey.currentState!.validate()) {
    //   loading.show(message: "Please Wait ..");
    //   await RegisterRepo.userValidation(
    //     name: nameController.text,
    //     email: emailController.text,
    //     phoneNumber: phoneNumberController.text,
    //     password: passwordController.text,
    //     onSuccess: () async {
    //       loading.hide();
    //       Get.to(RegisterPhoneVerificationScreen(
    //         phoneNumber: phoneNumberController.text,
    //       ));

    //       CustomSnackBar.success(
    //           title: "Sign up", message: "User registered succesfully");
    //     },
    //     onError: (message) {
    //       loading.hide();
    //       CustomSnackBar.error(title: "Sign up", message: message);
    //     },
    //   );
    // }
  }
}
