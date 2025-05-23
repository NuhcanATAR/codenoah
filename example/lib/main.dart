import 'package:example/view/button_example/button_view.dart';
import 'package:example/view/copy_example/copy_view.dart';
import 'package:example/view/dialog_example/dialog_view.dart';
import 'package:example/view/field_example/field_view.dart';
import 'package:example/view/firebase_example/firebase_view.dart';
import 'package:example/view/form_example/form_view.dart';
import 'package:example/view/image_example/image_view.dart';
import 'package:example/view/response_example/response_view.dart';
import 'package:example/view/router_example/router_view.dart';
import 'package:example/view/text_example/text_view.dart';
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
        centerTitle: true,
        title: const TitleLargeMainColorBoldText(
          text: "CodeNoah Package",
          textAlign: TextAlign.center,
        ),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: Center(
          child: ListView(
            children: <Widget>[
              // form example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Form Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const FormView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // field example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Field Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const FieldView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // response exaple
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Response Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const ResponseView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // button example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Button Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const ButtonView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // text example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Text Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const TextView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // firebase example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Firebase Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const FirebaseView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // image example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Image Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const ImageView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // copy example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Copy Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const CopyView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // router example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Router Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const RouterView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // show dialog example
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Dialog Example',
                func: () => CodeNoahNavigatorRouter.push(
                  context,
                  const DialogView(),
                ),
                btnStatus: ButtonTypes.primaryColorButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
