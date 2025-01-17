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
// Description: Customizable number text form field widget.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/src/helper/langue_options.dart';
import 'package:codenoah/src/util/util.dart';
import 'package:codenoah/src/validator/validator.dart';
import 'package:codenoah/src/widget/text/body_medium_text.dart';
import 'package:flutter/material.dart';

class NumberTextFieldWidget extends StatefulWidget {
  const NumberTextFieldWidget({
    super.key,
    required this.controller,
    required this.hintText,
    required this.onChanged,
    required this.isLabelText,
    this.languageOptions,
  });

  // controller
  final TextEditingController controller;
  // text entry into field
  final String hintText;
  // function in case of click
  final void Function(String)? onChanged;
  // label text for the top part of the field
  final bool isLabelText;
  // language selection for error printing
  final LanguageOptions? languageOptions;

  @override
  State<NumberTextFieldWidget> createState() => _NumberTextFieldWidgetState();
}

class _NumberTextFieldWidgetState extends State<NumberTextFieldWidget> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // label text
        if (widget.isLabelText) buildLabelTextWidget,
        // number field
        buildNumberFieldWidget,
        // validator error
        if (errorText != null) buildValidatorErrorWidget,
      ],
    );
  }

  // label text
  Widget get buildLabelTextWidget => SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Padding(
          padding: BaseUtility.vertical(BaseUtility.paddingNormalValue),
          child: BodyMediumBlackBoldText(
            text: widget.hintText,
            textAlign: TextAlign.left,
          ),
        ),
      );

  // number field
  Widget get buildNumberFieldWidget => Container(
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
            final result = CodeNoahValidator(
              value: value,
              context: context,
              languageOptions:
                  widget.languageOptions ?? LanguageOptions.english,
            ).emptyNumberCheck;
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
      );

  // validator error
  Widget get buildValidatorErrorWidget => Padding(
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
      );
}
