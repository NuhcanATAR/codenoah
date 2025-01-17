import 'package:example/view/field_example/field_view.dart';
import 'package:flutter/material.dart';

abstract class FieldViewModel extends State<FieldView> {
  TextEditingController normalEditingController = TextEditingController();
  TextEditingController numberEditingController = TextEditingController();
  TextEditingController phoneNumberEditingController = TextEditingController();
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController passwordEditingController = TextEditingController();
}
