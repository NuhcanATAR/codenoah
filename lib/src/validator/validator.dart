// CODENOAH
// -----------------------------------
//   ####    #####   #####    #######  ##   ##   #####     ###     ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ###  ##  ### ###   ## ##    ##  ##
// ##       ##   ##   ##  ##   ##      #### ##  ##   ##  ##   ##   ##  ##
// ##       ##   ##   ##  ##   ####    #######  ##   ##  ##   ##   ######
// ##       ##   ##   ##  ##   ##      ## ####  ##   ##  #######   ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ##  ###  ### ###  ##   ##   ##  ##
//   ####    #####   #####    #######  ##   ##   #####   ##   ##   ##  ##
// -----------------------------------
// Publisher: Nuhcan ATAR
// LinkedIn: https://www.linkedin.com/in/nuhcan-atar-371276208/
// GitHub: https://github.com/NuhcanATAR
// E-mail: nuhcanatar20@gmail.com
// -----------------------------------
// Description: error warning validators prepared for textformfieds in form validation processes.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/src/enum/validator_enum.dart';
import 'package:codenoah/src/helper/langue_options.dart';
import 'package:flutter/material.dart';

final class CodeNoahValidator {
  CodeNoahValidator({
    required this.value,
    required this.context,
    required this.languageOptions,
  });

  final String? value;
  final BuildContext? context;
  final LanguageOptions? languageOptions;

  // integer control
  bool isNumeric(String? s) {
    if (s == null) {
      return false;
    }
    return double.tryParse(s) != null;
  }

  // regexp
  final phoneNumberRegExp = RegExp(r"^[1-9][0-9]{9}$");
  final emailRegExp =
      RegExp(r"^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$");

  // number check validator
  String? get emptyNumberCheck {
    if (value == null || value!.isEmpty) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.requiredFieldEn.value
          : ValidatorEnum.requiredFieldTr.value;
    } else if (!isNumeric(value)) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.invalidValueEn.value
          : ValidatorEnum.invalidaValueTr.value;
    }
    return null;
  }

  // normal check validator
  String? get emptyNormalCheck {
    if (value == null || value!.isEmpty) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.requiredFieldEn.value
          : ValidatorEnum.requiredFieldTr.value;
    } else if (isNumeric(value) == true) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.invalidValueEn.value
          : ValidatorEnum.invalidaValueTr.value;
    }
    return null;
  }

  // email check validator
  String? get emailCheck {
    if (value == null || value!.isEmpty) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.emailEmptyEn.value
          : ValidatorEnum.emailEmptyTr.value;
    } else if (!emailRegExp.hasMatch(value!)) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.invalidEmailEn.value
          : ValidatorEnum.invalidEmailTr.value;
    } else {
      return null;
    }
  }

  // password check validator
  String? get passwordCheck {
    if (value == null || value!.isEmpty) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.passwordEmptyEn.value
          : ValidatorEnum.passwordEmptyTr.value;
    } else if (value!.length < 8) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.passwordLengthEn.value
          : ValidatorEnum.passwordLengthTr.value;
    } else if (!value!.contains(RegExp(r'[A-Z]'))) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.passwordUppercaseEn.value
          : ValidatorEnum.passwordUppercaseTr.value;
    } else if (!value!.contains(RegExp(r'[a-z]'))) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.passwordLowercaseEn.value
          : ValidatorEnum.passwordLowercaseTr.value;
    } else if (!value!.contains(RegExp(r'[0-9]'))) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.passwordNumberEn.value
          : ValidatorEnum.passwordNumberTr.value;
    } else if (!value!.contains(RegExp(r'[!@#$%^&*(),.?":{}|<>]'))) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.passwordSpecialCharEn.value
          : ValidatorEnum.passwordSpecialCharTr.value;
    } else {
      return null;
    }
  }

  // phone number validator
  String? phoneNumberValidator(String? phoneNumberVal) {
    if (phoneNumberVal == null || phoneNumberVal.isEmpty) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.requiredFieldEn.value
          : ValidatorEnum.requiredFieldTr.value;
    } else if (!isNumeric(phoneNumberVal)) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.phoneNumberInvalidEn.value
          : ValidatorEnum.phoneNumberInvalidTr.value;
    } else if (!phoneNumberRegExp.hasMatch(phoneNumberVal)) {
      return languageOptions == LanguageOptions.english
          ? ValidatorEnum.phoneNumberInvalidEn.value
          : ValidatorEnum.phoneNumberInvalidTr.value;
    } else {
      return null;
    }
  }
}
