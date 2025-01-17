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
// Description: Widget to quickly display empty, error or loading status.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class CustomResponseWidget extends StatelessWidget {
  const CustomResponseWidget({
    super.key,
    required this.img,
    required this.title,
    required this.subTitle,
  });

  final Widget img;
  final String title;
  final String subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: BaseUtility.all(
        BaseUtility.paddingNormalValue,
      ),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              // img
              img,
              // title
              Padding(
                padding: BaseUtility.top(
                  BaseUtility.paddingHightValue,
                ),
                child: TitleLargeBlackBoldText(
                  text: title,
                  textAlign: TextAlign.center,
                ),
              ),
              // sub title
              Padding(
                padding: BaseUtility.vertical(
                  BaseUtility.paddingNormalValue,
                ),
                child: BodyMediumBlackText(
                  text: subTitle,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomLoadingResponseWidget extends StatelessWidget {
  const CustomLoadingResponseWidget({
    super.key,
    required this.title,
    required this.subTitle,
  });

  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: BaseUtility.all(
        BaseUtility.paddingNormalValue,
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // loading
            CircularProgressIndicator(
              color: Theme.of(context).colorScheme.primary,
            ),
            // title
            Padding(
              padding: BaseUtility.top(
                BaseUtility.paddingHightValue,
              ),
              child: BodyMediumBlackBoldText(
                text: title,
                textAlign: TextAlign.center,
              ),
            ),
            // sub title
            Padding(
              padding: BaseUtility.vertical(
                BaseUtility.paddingSmallValue,
              ),
              child: BodyMediumBlackText(
                text: subTitle,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
