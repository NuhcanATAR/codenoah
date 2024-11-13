// ignore_for_file: deprecated_member_use

import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class NormalTextFieldWidget extends StatelessWidget {
  const NormalTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.explanationStatus,
    required this.onChanged,
    required this.isValidator,
    required this.enabled,
    required this.isLabelText,
    required this.width,
  });
  final TextEditingController controller;
  final String hintText;
  final bool explanationStatus;
  final void Function(String)? onChanged;
  final bool isValidator;
  final bool enabled;
  final bool isLabelText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        isLabelText == true
            ? SizedBox(
                width: width,
                child: Padding(
                  padding: PaddingSizedsUtility.vertical(
                    PaddingSizedsUtility.normalPaddingValue,
                  ),
                  child: BodyMediumBlackText(
                    text: hintText,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            : const SizedBox(),
        Container(
          margin: MarginSizedsUtility.bottom(
            MarginSizedsUtility.smallMarginValue,
          ),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                  fontFamily: 'Popins',
                  fontWeight: FontWeight.bold,
                ),
            controller: controller,
            validator: isValidator == true
                ? (String? value) =>
                    CodeNoahValidator(value: value, context: context)
                        .emptyNormalCheck
                : null,
            onChanged: onChanged,
            keyboardType: TextInputType.text,
            maxLines: explanationStatus == true ? 4 : null,
            enabled: enabled,
            decoration: InputDecoration(
              hintText: isLabelText == true ? '' : hintText,
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontFamily: 'Popins Light',
                    fontWeight: FontWeight.w500,
                  ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: EdgeInsets.symmetric(
                horizontal: PaddingSizedsUtility.normalPaddingValue,
                vertical: PaddingSizedsUtility.smallPaddingValue,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class NumberTextFieldWidget extends StatelessWidget {
  const NumberTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    required this.isLabelText,
    required this.width,
  });
  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChanged;
  final bool isLabelText;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        isLabelText == true
            ? SizedBox(
                width: width,
                child: Padding(
                  padding: PaddingSizedsUtility.vertical(
                    PaddingSizedsUtility.normalPaddingValue,
                  ),
                  child: BodyMediumBlackText(
                    text: hintText,
                    textAlign: TextAlign.left,
                  ),
                ),
              )
            : const SizedBox(),
        Container(
          margin: MarginSizedsUtility.bottom(
            MarginSizedsUtility.smallMarginValue,
          ),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                  fontFamily: 'Nunito Regular',
                ),
            onChanged: onChanged,
            controller: controller,
            validator: (String? value) =>
                CodeNoahValidator(value: value, context: context)
                    .emptyNumberCheck,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: isLabelText == true ? '' : hintText,
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                    fontFamily: 'Popins Light',
                    fontWeight: FontWeight.w500,
                  ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: EdgeInsets.symmetric(
                horizontal: PaddingSizedsUtility.normalPaddingValue,
                vertical: PaddingSizedsUtility.smallPaddingValue,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  RadiusExtension.circularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
