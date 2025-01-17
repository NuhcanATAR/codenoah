import 'package:codenoah/codenoah.dart';
import 'package:example/view/copy_example/copy_view.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

abstract class CopyViewModel extends State<CopyView> {
  void copyFunc() {
    CodeNoahClipboard.controlC('CodeNoah Package').then((val) {
      if (!mounted) return;
      CodeNoahDialogs(context).showFlush(
        type: SnackType.success,
        message: 'Copied successfully',
      );
    }).catchError((val) {
      if (!mounted) return;
      CodeNoahDialogs(context).showFlush(
        type: SnackType.error,
        message: 'Failed to copy',
      );
    });
  }

  Future<void> pasteFunc() async {
    final String? pastedText = await CodeNoahClipboard.controlV();
    if (pastedText != null) {
      if (kDebugMode) {
        print('Pasted text: $pastedText');
      }
    } else {
      if (kDebugMode) {
        print('Clipboard is empty or contains invalid data.');
      }
    }
  }
}
