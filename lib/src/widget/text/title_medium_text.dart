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

class TitleMediumBlackBoldText extends StatelessWidget {
  const TitleMediumBlackBoldText({
    super.key,
    required this.text,
    required this.textAlign,
    required this.colorScheme,
  });

  final String text;
  final TextAlign textAlign;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'Popins Light',
          ),
    );
  }
}

class TitleMediumWhiteBoldText extends StatelessWidget {
  const TitleMediumWhiteBoldText({
    super.key,
    required this.text,
    required this.textAlign,
    required this.colorScheme,
  });

  final String text;
  final TextAlign textAlign;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontWeight: FontWeight.bold,
            fontFamily: 'Popins Light',
            color: Colors.white,
          ),
    );
  }
}

class TitleMediumBlackText extends StatelessWidget {
  const TitleMediumBlackText({
    super.key,
    required this.text,
    required this.textAlign,
    required this.colorScheme,
  });

  final String text;
  final TextAlign textAlign;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontFamily: 'Nunito Regular',
          ),
    );
  }
}

class TitleMediumWhiteText extends StatelessWidget {
  const TitleMediumWhiteText({
    super.key,
    required this.text,
    required this.textAlign,
    required this.colorScheme,
  });

  final String text;
  final TextAlign textAlign;
  final ColorScheme colorScheme;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: textAlign,
      style: Theme.of(context)
          .textTheme
          .titleMedium!
          .copyWith(fontFamily: 'Popins Light', color: Colors.white),
    );
  }
}

class TitleHeaderWhiteText extends StatelessWidget {
  const TitleHeaderWhiteText({
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
      style: Theme.of(context)
          .textTheme
          .titleLarge!
          .copyWith(fontFamily: 'Popins Light', color: Colors.white),
    );
  }
}

class TitleMediumMainColorText extends StatelessWidget {
  const TitleMediumMainColorText({
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
      style: Theme.of(context).textTheme.titleMedium!.copyWith(
            fontFamily: 'Popins Light',
            color: Theme.of(context).colorScheme.primary,
          ),
    );
  }
}
