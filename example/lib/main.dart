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
  Future<void> hello() async {
    try {
      //
    } catch (e) {
      throw ServiceException('Hello');
    }
  }

  final formKey = GlobalKey<FormState>();
  late TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TitleLargeMainColorBoldText(
            text: "Hello", textAlign: TextAlign.center),
      ),
      body: Form(
        key: formKey,
        child: Column(
          children: <Widget>[
            // e-mail
            NormalTextFieldWidget(
              controller: controller,
              hintText: 'E-mail',
              onChanged: (val) {},
              isLabelText: true,
              languageOptions: LanguageOptions.english,
              explanationStatus: false,
              isValidator: true,
              enabled: true,
            ),

            CustomButtonWidget(
              width: MediaQuery.of(context).size.width,
              text: 'text',
              func: () {
                if (formKey.currentState!.validate()) {}
              },
              btnStatus: ButtonTypes.iconPrimaryColorButton,
              btnIcon: Icons.access_alarm,
            ),
          ],
        ),
      ),
    );
  }
}
