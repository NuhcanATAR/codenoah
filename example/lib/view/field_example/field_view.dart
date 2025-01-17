import 'package:codenoah/codenoah.dart';
import 'package:example/view/field_example/field_viewmodel.dart';
import 'package:flutter/material.dart';

class FieldView extends StatefulWidget {
  const FieldView({super.key});

  @override
  State<FieldView> createState() => _FieldViewState();
}

class _FieldViewState extends FieldViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Field Example'),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: ListView(
          shrinkWrap: true,
          children: <Widget>[
            // normal field
            NormalTextFieldWidget(
              controller: normalEditingController,
              hintText: 'Normal Text Field',
              explanationStatus: false,
              onChanged: (val) {},
              isValidator: true,
              enabled: true,
              isLabelText: true,
              languageOptions: LanguageOptions.english,
            ),
            // number field
            NumberTextFieldWidget(
              controller: numberEditingController,
              hintText: 'Number Field',
              onChanged: (val) {},
              isLabelText: true,
              languageOptions: LanguageOptions.english,
            ),
            // phone number field
            PhoneNumberFieldWidget(
              phoneNumberController: phoneNumberEditingController,
              hintText: 'Phone Number Field',
              onChanged: (val) {},
              isLabelText: true,
              width: ViewSizeValueModelExtension(context).maxWidth(context),
              languageOptions: LanguageOptions.english,
            ),
            // email field
            CustomEmailFieldWidget(
              emailController: emailEditingController,
              hintText: 'E-mail Field',
              onChanged: (val) {},
              isLabelText: true,
              languageOptions: LanguageOptions.english,
            ),
            // password field
            CustomPasswordFieldWidget(
              passwordController: passwordEditingController,
              hintText: 'Password Field',
              onChanged: (val) {},
              isValidator: true,
              isLabelText: true,
              width: ViewSizeValueModelExtension(context).maxWidth(context),
              languageOptions: LanguageOptions.english,
            ),
          ],
        ),
      ),
    );
  }
}
