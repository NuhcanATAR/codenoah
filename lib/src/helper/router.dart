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
// Description: a redirection property with redirection styles that allows to redirect from screen to screen in the application.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:flutter/material.dart';

// Enum that determines page transition directions.
enum SlideDirection { leftToRight, rightToLeft, topToBottom, bottomToTop }

// Class for special navigation operations.
class CodeNoahNavigatorRouter {
  // Switches to a new page.
  static void push(
    BuildContext context,
    Widget page, {
    SlideDirection direction =
        SlideDirection.rightToLeft, // Default transition direction
  }) {
    Navigator.push(context, _createRoute(page, direction));
  }

  // Switches to a new page and closes previous pages.
  static void pushAndRemoveUntil(
    BuildContext context,
    Widget page, {
    SlideDirection direction =
        SlideDirection.rightToLeft, // Default transition direction
  }) {
    Navigator.pushAndRemoveUntil(
      context,
      _createRoute(page, direction),
      (Route<dynamic> route) => false, // Closes all previous pages
    );
  }

  // Creates a custom transition animation.
  static PageRouteBuilder _createRoute(Widget page, SlideDirection direction) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        Offset begin;
        switch (direction) {
          case SlideDirection.leftToRight:
            begin = const Offset(-1.0, 0.0); // From left to right
            break;
          case SlideDirection.rightToLeft:
            begin = const Offset(1.0, 0.0); // Right to left
            break;
          case SlideDirection.topToBottom:
            begin = const Offset(0.0, -1.0); // From top to bottom
            break;
          case SlideDirection.bottomToTop:
            begin = const Offset(0.0, 1.0); // From bottom to top
            break;
        }
        const end = Offset.zero; // End position
        const curve = Curves.easeInOut; // Transition curve

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation, // Apply animation
          child: child,
        );
      },
    );
  }
}
