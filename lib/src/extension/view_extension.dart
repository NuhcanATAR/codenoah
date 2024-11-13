import 'package:flutter/material.dart';

extension ViewSizeModelExtension on BuildContext {
  Size get mediaSize => MediaQuery.sizeOf(this);
}

extension ViewSizeValueModelExtension on BuildContext {
  double maxWidth(BuildContext context) =>
      ViewSizeModelExtension(context).mediaSize.width;
  double maxHeight(BuildContext context) =>
      ViewSizeModelExtension(context).mediaSize.height;

  double dynamicWidth(BuildContext context, double value) =>
      maxWidth(context) * value;
  double dynamicHeight(BuildContext context, double value) =>
      maxHeight(context) * value;
}
