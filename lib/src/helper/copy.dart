// CODENOAH
// -----------------------------------
//   ####    #####   #####    #######  ##   ##   #####     ###     ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ###  ##  ### ###   ## ##    ##  ##
// ##       ##   ##   ##  ##   ##      #### ##  ##   ##  ##   ##   ##  ##
// ##       ##   ##   ##  ##   ####    #######  ##   ##  ##   ##   ######
// ##       ##   ##   ##  ##   ##      ## ####  ##   ##  #######   ##  ##
//  ##  ##  ### ###   ## ##    ##   #  ##  ###  ### ###  ##   ##   ##  ##
//   ####    #####   #####    #######  ##   ##   #####   ##   ##   ##  ##
// -----------------------------------
// Publisher: Nuhcan ATAR
// LinkedIn: https://www.linkedin.com/in/nuhcan-atar-371276208/
// GitHub: https://github.com/NuhcanATAR
// E-mail: nuhcanatar20@gmail.com
// -----------------------------------
// Description: feature with copy and paste capabilities.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/src/exception/exception.dart';
import 'package:flutter/services.dart';

class CodeNoahClipboard {
  // Copies text to the clipboard.
  static Future<void> copy(String text) async {
    if (text.isNotEmpty) {
      await Clipboard.setData(
        ClipboardData(text: text),
      ); // Copy text to clipboard.
      return;
    } else {
      throw ServiceException('Please set to text input'); // Empty text error.
    }
  }

  // Pastes text from the clipboard.
  static Future<String> paste() async {
    final ClipboardData? data =
        await Clipboard.getData('text/plain'); // Get text from the clipboard.
    return data?.text?.toString() ?? ""; // Return text or return empty string.
  }

  // Copies text to clipboard and returns success status.
  static Future<bool> controlC(String text) async {
    if (text.isNotEmpty) {
      await Clipboard.setData(
        ClipboardData(text: text),
      ); // Copy text to clipboard.
      return true;
    } else {
      return false; // Failed (empty text).
    }
  }

  // Retrieves data from the clipboard.
  static Future<dynamic> controlV() async {
    final ClipboardData? data =
        await Clipboard.getData('text/plain'); // Get data from the clipboard.
    return data; // Return data.
  }
}
