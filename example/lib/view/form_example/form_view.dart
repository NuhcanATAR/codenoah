import 'package:codenoah/codenoah.dart';
import 'package:example/view/form_example/form_viewmodel.dart';
import 'package:flutter/material.dart';

class FormView extends StatefulWidget {
  const FormView({super.key});

  @override
  State<FormView> createState() => _FormViewState();
}

class _FormViewState extends FormViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form View"),
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: BaseUtility.all(
            BaseUtility.paddingNormalValue,
          ),
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // name surname
              Row(
                children: <Widget>[
                  // name
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Padding(
                      padding: BaseUtility.right(
                        BaseUtility.paddingMediumValue,
                      ),
                      child: NormalTextFieldWidget(
                        controller: nameController,
                        hintText: 'Name',
                        explanationStatus: false,
                        onChanged: (val) {},
                        isValidator: true,
                        enabled: true,
                        isLabelText: true,
                        languageOptions: LanguageOptions.english,
                      ),
                    ),
                  ),
                  // surname
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 1,
                    child: Padding(
                      padding: BaseUtility.left(
                        BaseUtility.paddingMediumValue,
                      ),
                      child: NormalTextFieldWidget(
                        controller: surnameController,
                        hintText: 'Surname',
                        explanationStatus: false,
                        onChanged: (val) {},
                        isValidator: true,
                        enabled: true,
                        isLabelText: true,
                        languageOptions: LanguageOptions.english,
                      ),
                    ),
                  ),
                ],
              ),
              // email
              CustomEmailFieldWidget(
                emailController: emailController,
                hintText: 'E-mail',
                onChanged: (val) {},
                isLabelText: true,
                languageOptions: LanguageOptions.english,
              ),
              // phone number
              PhoneNumberFieldWidget(
                phoneNumberController: phoneNumberController,
                hintText: 'Phone Number',
                onChanged: (val) {},
                isLabelText: true,
                languageOptions: LanguageOptions.english,
                width: ViewSizeValueModelExtension(context).maxWidth(context),
              ),
              // password
              CustomPasswordFieldWidget(
                passwordController: passwordController,
                hintText: 'Password',
                onChanged: (val) {},
                isLabelText: true,
                languageOptions: LanguageOptions.english,
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                isValidator: true,
              ),
              // save button
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'SAVE',
                func: sendRegister,
                btnStatus: ButtonTypes.primaryColorButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
