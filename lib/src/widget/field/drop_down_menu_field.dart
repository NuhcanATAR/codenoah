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
// Description: DropDownMenu Button Field widget
// For more information, visit the repository or contact the publisher.
// -----------------------------------

import 'package:codenoah/codenoah.dart';
import 'package:flutter/material.dart';

class DropDownSingleListMenuWidget extends StatefulWidget {
  final String? selectStatus;
  final Function(String?) onStatusChanged;
  final String text;
  final List<String> list;
  final bool statusValidator;
  final bool? isLabelText;
  final LanguageOptions languageOptions;
  final Widget menuIcon;

  const DropDownSingleListMenuWidget({
    super.key,
    required this.selectStatus,
    required this.onStatusChanged,
    required this.text,
    required this.list,
    required this.statusValidator,
    this.isLabelText,
    required this.languageOptions,
    required this.menuIcon,
  });
  @override
  State<DropDownSingleListMenuWidget> createState() =>
      _DropDownSingleListMenuWidgetState();
}

class _DropDownSingleListMenuWidgetState
    extends State<DropDownSingleListMenuWidget> {
  String? _selectStatus;

  String? errorText;

  @override
  void initState() {
    super.initState();
    if (widget.selectStatus != null &&
        widget.selectStatus!.isNotEmpty &&
        widget.list.contains(widget.selectStatus)) {
      _selectStatus = widget.selectStatus;
    } else {
      _selectStatus = null;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: BaseUtility.bottom(
        BaseUtility.paddingMediumValue,
      ),
      child: widget.isLabelText == null
          ? Column(
              children: <Widget>[
                DropdownButtonHideUnderline(
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    hint: BodyMediumBlackText(
                      text: widget.text,
                      textAlign: TextAlign.center,
                    ),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(
                        fontSize: 0.2,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: BaseUtility.all(
                        BaseUtility.paddingNormalValue,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.error,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.error,
                          width: 1,
                        ),
                      ),
                    ),
                    icon: widget.menuIcon,
                    value: _selectStatus,
                    validator: (value) => widget.statusValidator == true
                        ? CodeNoahValidator(
                            value: value,
                            context: context,
                            languageOptions: widget.languageOptions,
                          ).emptyNormalCheck
                        : null,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectStatus = newValue;
                        // _selectStatus = null;
                        errorText = CodeNoahValidator(
                          value: newValue,
                          context: context,
                          languageOptions: widget.languageOptions,
                        ).emptyNormalCheck;
                      });
                      widget.onStatusChanged(newValue);
                    },
                    items: widget.list
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            )
          : Column(
              children: <Widget>[
                // label text
                SizedBox(
                  width: ViewSizeValueModelExtension(context).maxWidth(context),
                  child: Padding(
                    padding:
                        BaseUtility.vertical(BaseUtility.paddingNormalValue),
                    child: BodyMediumBlackBoldText(
                      text: widget.text,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                // menu
                DropdownButtonHideUnderline(
                  child: DropdownButtonFormField<String>(
                    isExpanded: true,
                    hint: BodyMediumBlackText(
                      text: widget.text,
                      textAlign: TextAlign.center,
                    ),
                    decoration: InputDecoration(
                      errorStyle: const TextStyle(
                        fontSize: 0.2,
                      ),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: BaseUtility.all(
                        BaseUtility.paddingNormalValue,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide.none,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: const BorderSide(
                          color: Colors.grey,
                          width: 1,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.primary,
                          width: 1,
                        ),
                      ),
                      focusedErrorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.error,
                          width: 1,
                        ),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(
                          BaseUtility.radiusCircularMediumValue,
                        ),
                        borderSide: BorderSide(
                          color: Theme.of(context).colorScheme.error,
                          width: 1,
                        ),
                      ),
                    ),
                    icon: widget.menuIcon,
                    value: _selectStatus,
                    validator: (value) => widget.statusValidator == true
                        ? CodeNoahValidator(
                            value: value,
                            context: context,
                            languageOptions: widget.languageOptions,
                          ).emptyNormalCheck
                        : null,
                    onChanged: (String? newValue) {
                      setState(() {
                        _selectStatus = newValue;
                        // _selectStatus = null;
                        errorText = CodeNoahValidator(
                          value: newValue,
                          context: context,
                          languageOptions: widget.languageOptions,
                        ).emptyNormalCheck;
                      });
                      widget.onStatusChanged(newValue);
                    },
                    items: widget.list
                        .map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
    );
  }
}
