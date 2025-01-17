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
// Description: Customizable normal text form field widget.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

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
    required this.languageOptions,
  });

  // controller
  final TextEditingController controller;
  // text entered into field
  final String hintText;
  // description field status check
  final bool explanationStatus;
  // function in case of click
  final void Function(String)? onChanged;
  // verification status
  final bool isValidator;
  // field use on or off status
  final bool enabled;
  // text at the top of the field
  final bool isLabelText;
  // language selection for error printing
  final LanguageOptions languageOptions;

  @override
  State<NormalTextFieldWidget> createState() => _NormalTextFieldWidgetState();
}

class _NormalTextFieldWidgetState extends State<NormalTextFieldWidget> {
  String? errorText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        if (widget.isLabelText) buildLabelTextWidget,
        // normal field
        buildNormalFieldWidget,
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

  // normal field
  Widget get buildNormalFieldWidget => Container(
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
              languageOptions: widget.languageOptions,
            ).emailCheck;
            setState(() {
              errorText = result;
            });
            return result;
          },
          minLines: widget.explanationStatus == true ? 6 : 1,
          maxLines: widget.explanationStatus == true ? 6 : 1,
          onChanged: widget.onChanged,
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
