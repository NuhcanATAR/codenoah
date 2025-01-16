// ignore_for_file: deprecated_member_use

import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class NormalTextFieldWidget extends StatefulWidget {
  const NormalTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.explanationStatus,
    required this.onChanged,
    required this.isValidator,
    required this.enabled,
    required this.isLabelText,
  });
  final TextEditingController controller;
  final String hintText;
  final bool explanationStatus;
  final void Function(String)? onChanged;
  final bool isValidator;
  final bool enabled;
  final bool isLabelText;

  @override
  State<NormalTextFieldWidget> createState() => _NormalTextFieldWidgetState();
}

class _NormalTextFieldWidgetState extends State<NormalTextFieldWidget> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (widget.isLabelText)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: BaseUtility.vertical(BaseUtility.paddingNormalValue),
              child: BodyMediumBlackBoldText(
                text: widget.hintText,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        Container(
          padding: BaseUtility.horizontal(BaseUtility.paddingNormalValue),
          margin: widget.isLabelText
              ? BaseUtility.bottom(BaseUtility.marginNormalValue)
              : BaseUtility.bottom(BaseUtility.paddingSmallValue),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              BaseUtility.radiusCircularMediumValue,
            ),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                  fontFamily: 'Popins Light',
                  fontWeight: FontWeight.bold,
                ),
            controller: widget.controller,
            validator: (String? value) {
              final result =
                  CodeNoahValidator(value: value, context: context).emailCheck;
              setState(() {
                errorText = result;
              });
              return result;
            },
            onChanged: widget.onChanged,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              errorStyle: const TextStyle(
                fontSize: 0.2,
              ),
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: BaseUtility.paddingNormalValue,
                vertical: BaseUtility.paddingSmallValue,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        // validator error
        if (errorText != null)
          Padding(
            padding: BaseUtility.all(BaseUtility.paddingMediumValue),
            child: Row(
              children: [
                Icon(
                  Icons.warning_rounded,
                  color: Theme.of(context).colorScheme.error,
                  size: BaseUtility.iconNormalSize,
                ),
                Expanded(
                  child: Padding(
                    padding: BaseUtility.left(BaseUtility.paddingNormalValue),
                    child: BodyMediumRedText(
                      text: errorText!,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

class NumberTextFieldWidget extends StatefulWidget {
  const NumberTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    required this.isLabelText,
  });
  final TextEditingController controller;
  final String hintText;
  final void Function(String)? onChanged;
  final bool isLabelText;

  @override
  State<NumberTextFieldWidget> createState() => _NumberTextFieldWidgetState();
}

class _NumberTextFieldWidgetState extends State<NumberTextFieldWidget> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (widget.isLabelText)
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: BaseUtility.vertical(BaseUtility.paddingNormalValue),
              child: BodyMediumBlackBoldText(
                text: widget.hintText,
                textAlign: TextAlign.left,
              ),
            ),
          ),
        Container(
          padding: BaseUtility.horizontal(BaseUtility.paddingNormalValue),
          margin: widget.isLabelText
              ? BaseUtility.bottom(BaseUtility.marginNormalValue)
              : BaseUtility.bottom(BaseUtility.paddingSmallValue),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              BaseUtility.radiusCircularMediumValue,
            ),
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
          ),
          child: TextFormField(
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color: Theme.of(context).colorScheme.scrim,
                  fontFamily: 'Popins Light',
                  fontWeight: FontWeight.bold,
                ),
            controller: widget.controller,
            validator: (String? value) {
              final result = CodeNoahValidator(value: value, context: context)
                  .emptyNumberCheck;
              setState(() {
                errorText = result;
              });
              return result;
            },
            onChanged: widget.onChanged,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              errorStyle: const TextStyle(
                fontSize: 0.2,
              ),
              hintText: widget.hintText,
              hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
              filled: true,
              fillColor: Colors.transparent,
              contentPadding: const EdgeInsets.symmetric(
                horizontal: BaseUtility.paddingNormalValue,
                vertical: BaseUtility.paddingSmallValue,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                  width: 1,
                ),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  BaseUtility.radiusCircularMediumValue,
                ),
                borderSide: const BorderSide(
                  color: Colors.transparent,
                ),
              ),
            ),
          ),
        ),
        // validator error
        if (errorText != null)
          Padding(
            padding: BaseUtility.all(BaseUtility.paddingMediumValue),
            child: Row(
              children: [
                Icon(
                  Icons.warning_rounded,
                  color: Theme.of(context).colorScheme.error,
                  size: BaseUtility.iconNormalSize,
                ),
                Expanded(
                  child: Padding(
                    padding: BaseUtility.left(BaseUtility.paddingNormalValue),
                    child: BodyMediumRedText(
                      text: errorText!,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}
