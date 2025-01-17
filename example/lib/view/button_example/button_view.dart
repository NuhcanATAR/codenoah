import 'package:codenoah/codenoah.dart';
import 'package:example/view/button_example/button_viewmodel.dart';
import 'package:flutter/material.dart';

class ButtonView extends StatefulWidget {
  const ButtonView({super.key});

  @override
  State<ButtonView> createState() => _ButtonViewState();
}

class _ButtonViewState extends ButtonViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Example'),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // primary color button
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Primary Color Button',
                func: () {},
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // border primary color button
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Border Primary Color Button',
                func: () {},
                btnStatus: ButtonTypes.borderPrimaryColorButton,
              ),
              // icon button
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Icon Primary Color Button',
                func: () {},
                btnStatus: ButtonTypes.iconPrimaryColorButton,
                btnIcon: Icons.flutter_dash,
              ),
              // error color button
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Error Color Button',
                func: () {},
                btnStatus: ButtonTypes.borderErrorColorButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
