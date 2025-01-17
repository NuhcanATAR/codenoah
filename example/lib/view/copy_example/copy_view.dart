import 'package:codenoah/codenoah.dart';
import 'package:example/view/copy_example/copy_viewmodel.dart';
import 'package:flutter/material.dart';

class CopyView extends StatefulWidget {
  const CopyView({super.key});

  @override
  State<CopyView> createState() => _CopyViewState();
}

class _CopyViewState extends CopyViewModel {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Copy Example'),
      ),
      body: Padding(
        padding: BaseUtility.all(
          BaseUtility.paddingNormalValue,
        ),
        child: Center(
          child: ListView(
            shrinkWrap: true,
            children: <Widget>[
              // copy
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Copy',
                func: copyFunc,
                btnStatus: ButtonTypes.iconPrimaryColorButton,
                btnIcon: Icons.copy,
              ),
              // paste
              CustomButtonWidget(
                width: ViewSizeValueModelExtension(context).maxWidth(context),
                text: 'Paste',
                func: pasteFunc,
                btnStatus: ButtonTypes.borderPrimaryColorButton,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
