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
            color: Colors.lightBlue,
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
        ],
      ),
    );
  }
}
