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
// Description: pre-made post widget with ready-made styles.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:flutter/material.dart';

class TitleLargeBlackBoldText extends StatelessWidget {
  const TitleLargeBlackBoldText({
    super.key,
    required this.text,
    required this.textAlign,
  });

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'Popins Light',
          ),
    );
  }
}

class TitleLargeBlackText extends StatelessWidget {
  const TitleLargeBlackText({
    super.key,
    required this.text,
    required this.textAlign,
  });

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontFamily: 'Popins Light',
          ),
    );
  }
}

class TitleLargeWhiteBoldText extends StatelessWidget {
  const TitleLargeWhiteBoldText({
    super.key,
    required this.text,
    required this.textAlign,
  });

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'Popins Light',
            color: Colors.white,
          ),
    );
  }
}

class TitleLargeMainColorBoldText extends StatelessWidget {
  const TitleLargeMainColorBoldText({
    super.key,
    required this.text,
    required this.textAlign,
  });

  final String text;
  final TextAlign textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'Popins Light',
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }
}
