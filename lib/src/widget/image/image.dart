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
// Description: Widget for short and quick image insertion.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeNoahImageAsset extends StatelessWidget {
  const CodeNoahImageAsset({
    super.key,
    required this.toImg,
    required this.width,
    required this.height,
  });

  // image address
  final String toImg;
  // image height and width values
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      toImg,
      width: width,
      height: height,
    );
  }
}

class CodeNoahImageSvg extends StatelessWidget {
  const CodeNoahImageSvg({
    super.key,
    required this.toImg,
    required this.width,
    required this.height,
    this.color,
  });

  // image address
  final String toImg;

  // picture color
  final Color? color;

  // image height and width values
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      toImg,
      color: color,
      width: width,
      height: height,
    );
  }
}
