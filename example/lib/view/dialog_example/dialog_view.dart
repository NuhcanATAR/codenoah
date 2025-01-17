import 'package:codenoah/codenoah.dart';
import 'package:example/view/dialog_example/dialog_viewmodel.dart';
import 'package:flutter/material.dart';

class DialogView extends StatefulWidget {
  const DialogView({super.key});

  @override
  State<DialogView> createState() => _DialogViewState();
}

class _DialogViewState extends DialogViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dialog Example"),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // show flush
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Show Flush',
                func: showFlush,
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // modal bottom
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Modal Bottom',
                func: modalBottom,
                btnStatus: ButtonTypes.primaryColorButton,
              ),
              // loading dialog
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Loading Dialog',
                func: loadingDialog,
                btnStatus: ButtonTypes.primaryColorButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
