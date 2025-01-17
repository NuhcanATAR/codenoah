import 'package:codenoah/codenoah.dart';
import 'package:example/view/dialog_example/dialog_view.dart';
import 'package:flutter/material.dart';

abstract class DialogViewModel extends State<DialogView> {
  void showFlush() {
    CodeNoahDialogs(context).showFlush(
      type: SnackType.success,
      message: 'Test Show Flush Message',
    );
  }

  void modalBottom() {
    CodeNoahDialogs(context).showModalBottom(
      SizedBox(
        width: ViewSizeValueModelExtension(context).maxWidth(context),
        height: ViewSizeValueModelExtension(context).dynamicHeight(
          context,
          0.2,
        ),
        child: const Center(
          child: TitleLargeBlackBoldText(
            text: 'text',
            textAlign: TextAlign.center,
          ),
        ),
      ),
      backgroundColor: Colors.white,
    );
  }

  void loadingDialog() {
    CodeNoahDialogs(context).showAlert(
      const BodyMediumWhiteText(
        text: 'Loading...',
        textAlign: TextAlign.center,
      ),
    );
  }
}
