import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CodeNoahImageAsset extends StatelessWidget {
  const CodeNoahImageAsset({
    super.key,
    required this.toImg,
    required this.width,
    required this.height,
  });

  final String toImg;
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

  final String toImg;
  final Color? color;
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
