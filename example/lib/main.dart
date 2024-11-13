import 'package:flutter/material.dart';
import 'package:codenoah/codenoah.dart';

void main() {
  runApp(
    const CodeNoahApp(),
  );
}

class CodeNoahApp extends StatelessWidget {
  const CodeNoahApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: TestView(),
    );
  }
}

class TestView extends StatefulWidget {
  const TestView({super.key});

  @override
  State<TestView> createState() => _TestViewState();
}

class _TestViewState extends State<TestView> {
  late String pngValue = AppIcons.accountPassword.toPng;
  late String svgValue = AppIcons.accountPassword.toSvg;

  Future<void> exampleCollection() async {
    final collectRef =
        await FirebaseService().cloudFireStore.collection('User').get();

    final authRef =
        await FirebaseService().authService.createUserWithEmailAndPassword(
              email: 'hello@gmail.com',
              password: "123",
            );

    final userId = FirebaseService().authID;
  }

  Future<void> hello() async {
    try {
      //
    } catch (e) {
      throw ServiceException('Hello');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleLargeMainColorBoldText(
            text: "Hello", textAlign: TextAlign.center),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: ViewSizeValueModelExtension(context).maxWidth(context),
            height: ViewSizeValueModelExtension(context)
                .dynamicHeight(context, 0.2),
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius:
                    BorderRadius.circular(RadiusExtension.lowRadiusValue)),
          ),
          NormalTextFieldWidget(
            controller: TextEditingController(),
            hintText: 'Ad Soyad',
            explanationStatus: false,
            onChanged: (val) {},
            isValidator: true,
            enabled: true,
            isLabelText: false,
            width: ViewSizeValueModelExtension(context).maxWidth(context),
          ),
          CustomButtonWidget(
            width: ViewSizeValueModelExtension(context).maxWidth(context),
            text: 'text',
            func: () {},
            btnStatus: ButtonTypes.primaryColorButton,
          ),
          AppIcons.accountPassword.toPngImg(
            55,
            55,
          ),
          AppIcons.accountPassword.toSvgImg(
            Colors.red,
            55,
            55,
          ),
          TextFormField(
            validator: (String? value) =>
                CodeNoahValidator(value: value, context: context)
                    .emptyNormalCheck,
          ),
          CustomEmailFieldWidget(
            emailController: TextEditingController(),
            hintText: 'E-mail',
            onChanged: (val) {},
            isLabelText: true,
            width: ViewSizeValueModelExtension(context).maxWidth(context),
          ),
          CustomPasswordFieldWidget(
            passwordController: TextEditingController(),
            hintText: 'Şifre',
            onChanged: (val) {},
            isValidator: true,
            isLabelText: true,
            width: ViewSizeValueModelExtension(context).maxWidth(context),
          ),
          NormalTextFieldWidget(
            controller: TextEditingController(),
            hintText: 'Ad Soyad',
            explanationStatus: false,
            onChanged: (val) {},
            isValidator: true,
            enabled: true,
            isLabelText: true,
            width: ViewSizeValueModelExtension(context).maxWidth(context),
          ),
          NumberTextFieldWidget(
            controller: TextEditingController(),
            hintText: 'Fiyat',
            onChanged: (val) {},
            isLabelText: true,
            width: ViewSizeValueModelExtension(context).maxWidth(context),
          ),
        ],
      ),
    );
  }
}
