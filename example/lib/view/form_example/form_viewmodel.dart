import 'package:codenoah/codenoah.dart';
import 'package:example/view/form_example/form_view.dart';
import 'package:flutter/material.dart';

abstract class FormViewModel extends State<FormView> {
  final formKey = GlobalKey<FormState>();

  TextEditingController nameController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void sendRegister() {
    if (formKey.currentState!.validate()) {
      CodeNoahDialogs(context).showFlush(
        type: SnackType.success,
        message: 'Register was successfully',
      );
    }
  }
}
