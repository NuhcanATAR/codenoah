
<p align="center">
<a href="https://github.com/NuhcanATAR"></a> 
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>   
<a href="https://medium.com/@nuhcanatar20"> <img src="https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white" alt="Medium: nuhcanatar20">  </a> 
 
</p>

# codenoah

The Codenoah package is a comprehensive utility package that provides a set of design components and useful extensions you need when developing applications with Flutter. Codenoah includes a variety of tools and widgets specifically geared towards design and user experience improvement. With this package you can develop your Flutter projects faster and more efficiently, minimizing code repetition and configuration.


## View Size extension

```dart
 Container(
  width: ViewSizeValueModelExtension(context).maxWidth(context),
  height: ViewSizeValueModelExtension(context).dynamicHeight(context, 0.2),
  color: Colors.red,
),
```


### BorderRadius

Extension to be used for Edge Softening

`RadiusExtension // extension`

<details open> 

<summary>Usage:</summary> 

- `RadiusExtension.lowRadiusValue` //  20.0
- `RadiusExtension.normalRadiusValue` // 12.0
- `RadiusExtension.highRadiusValue` // 4.0
- `RadiusExtension.circularHighValue` // 124
- `RadiusExtension.circularNormalValue` // 24
- `RadiusExtension.circularMediumValue` // 15 
- `RadiusExtension.circularLowValue` // 4
  
</details>


### Copying

Use for copying text.

```dart
 onTap: (){
  CodeNoahClipboard.controlC('CodeNoah Package').then((val) {
      if (!mounted) return;
      CodeNoahDialogs(context).showFlush(
        type: SnackType.success,
        message: 'Copied successfully',
      );
    }).catchError((val) {
      if (!mounted) return;
      CodeNoahDialogs(context).showFlush(
        type: SnackType.error,
        message: 'Failed to copy',
      );
    });
}
```

### Paste

Use for text pasting.

```dart
 onTap: () async{
   final String? pastedText = await CodeNoahClipboard.controlV();
    if (pastedText != null) {
      if (kDebugMode) {
        print('Pasted text: $pastedText');
      }
    } else {
      if (kDebugMode) {
        print('Clipboard is empty or contains invalid data.');
      }
    }
}
```

### Routing

```dart
// Normal Routing
() {
  CodeNoahNavigatorRouter.push(
    context,
    ViewScreen(),
  );
},

// Screen Routing with Normal Position
() {
  CodeNoahNavigatorRouter.push(
    context,
    ViewScreen(),
    direction: SlideDirection.leftToRight,
  );
},

// Screen Routing with Normal Position without Reversal
() {
  CodeNoahNavigatorRouter.pushAndRemoveUntil(
    context,
    ViewScreen(),
  );
},

// Screen Routing with Normal Position without Reversal
() {
  CodeNoahNavigatorRouter.pushAndRemoveUntil(
    context,
    ViewScreen(),
    direction: SlideDirection.leftToRight,
  );
},
```
<details>

  
<summary> SlideDirection Features: </summary>

- `SlideDirection.leftToRight`
- `SlideDirection.rightToLeft`
- `SlideDirection.topToBottom`
- `SlideDirection.bottomToTop`
  </details>


### Padding

For interior space uses:  `PaddingSizedsUtility`

<details>
<summary>Usage: </summary>
 
- `PaddingSizedsUtility.hugePaddingValue` // 125.0
- `PaddingSizedsUtility.hightPaddingValue` // 55.0
- `PaddingSizedsUtility.normalPaddingValue` // 16.0
- `PaddingSizedsUtility.mediumPaddingValue` // 10.0
- `PaddingSizedsUtility.smallPaddingValue` // 5.0
</details>

### Margin

For external cavity uses:  `MarginSizedsUtility`

<details>
<summary>Usage: </summary>
 
- `MarginSizedsUtility.hugeMarginValue` // 125.0
- `MarginSizedsUtility.hightMarginValue` // 55.0
- `MarginSizedsUtility.normalMarginValue` // 16.0
- `MarginSizedsUtility.mediumMarginValue` // 10.0
- `MarginSizedsUtility.smallMarginValue` // 5.0
</details>

### Firebase Service

Firebase Servisi Kullanımları :  `FirebaseService`

```dart
  Future<void> exampleCollection() async {
    // collection
    final collectRef =
        await FirebaseService().cloudFireStore.collection('User').get();

    // authentication
    final authRef =
        await FirebaseService().authService.createUserWithEmailAndPassword(
              email: 'hello@gmail.com',
              password: "123",
            );

    // auth id
    final userId = FirebaseService().authID;
  }
```

### Exception

For Exception Usage :  `ServiceException`

```dart
 
Future<void> hello() async {
  try {
    //
  } catch (e) {
    throw ServiceException('Hello');
  }
}
```


### Validator Usage

Field Validator For Validation :  `CodeNoahValidator`

```dart
TextFormField(
  validator: (String? value) =>
      CodeNoahValidator(value: value, context: context).emptyNormalCheck,
),
```

<details>
<summary>Usage: </summary>
 
- `CodeNoahValidator(value: value, context: context).emptyNormalCheck` 
- `CodeNoahValidator(value: value, context: context).emptyNumberCheck` 
- `CodeNoahValidator(value: value, context: context).emailCheck` 
- `CodeNoahValidator(value: value, context: context).passwordCheck` 
- `CustomValidator(value: value, context: context).phoneNumberValidator(value)`
</details>


### Customized Button Usage
```dart
CustomButtonWidget(
  width: ViewSizeValueModelExtension(context).maxWidth(context),
  text: 'Hello',
  func: () {},
  btnStatus: ButtonTypes.primaryColorButton,
),
```

<details>
<summary>ButtonTypes Usage: </summary>
 
- `ButtonTypes.primaryColorButton` 
- `ButtonTypes.iconPrimaryColorButton` 
- `ButtonTypes.borderPrimaryColorButton` 
- `ButtonTypes.borderErrorColorButton` 
</details>

### Email Field Usage

```dart
CustomEmailFieldWidget(
   emailController: emailEditingController, // controller
   hintText: 'E-mail Field', // hint text
   onChanged: (val) {}, // in case of clicks
   isLabelText: true, // header label 
   languageOptions: LanguageOptions.english, // language preference for validator errors
 ),
```

### Password Field Usage

```dart
CustomPasswordFieldWidget(
  passwordController: passwordEditingController, // controller
  hintText: 'Password Field', // hint text
  onChanged: (val) {}, // in case of clicks
  isValidator: true, // validator error status
  isLabelText: true, // header label
  width: ViewSizeValueModelExtension(context).maxWidth(context), // label text width
  languageOptions: LanguageOptions.english, // language preference for validator errors
),
```

### Normal Text Field

```dart
NormalTextFieldWidget(
  controller: normalEditingController, // controller
  hintText: 'Normal Text Field', // hint text
  explanationStatus: false, // explanation field status
  onChanged: (val) {}, // in case of clicks
  isValidator: true, // validator error status
  enabled: true, // field enabled active status
  isLabelText: true, // header text
  languageOptions: LanguageOptions.english, // language prefrence for validator errors
),
```

### Number Field

```dart
NumberTextFieldWidget(
  controller: numberEditingController, // controller
  hintText: 'Number Field', // hint text
  onChanged: (val) {}, // in case of clicks
  isLabelText: true, // header text
  languageOptions: LanguageOptions.english, // language prefrence for validator errors
),
```

### Phone Number Field 

```dart
PhoneNumberFieldWidget(
  phoneNumberController: phoneNumberEditingController, // controller
  hintText: 'Phone Number Field', // hint text
  onChanged: (val) {}, // in case of clicks
  isLabelText: true, // header text
  width: ViewSizeValueModelExtension(context).maxWidth(context), // label text width
  languageOptions: LanguageOptions.english, // language preference for validator errors
),
```

### Show Flush Usage

```dart
void showFlush() {
  CodeNoahDialogs(context).showFlush(
    type: SnackType.success,
    message: 'Test Show Flush Message',
  );
}
```

### Modal Bottom Usage

```dart
void modalBottom() {
  CodeNoahDialogs(context).showModalBottom(
    SizedBox(
      width: ViewSizeValueModelExtension(context).maxWidth(context),
      height: ViewSizeValueModelExtension(context).dynamicHeight(
        context,
        0.2,
      ),
      child: const Center(
        child: TitleLargeBlackBoldText(
          text: 'text',
          textAlign: TextAlign.center,
        ),
      ),
    ),
    backgroundColor: Colors.white,
  );
}
```

### Loading Dialog Usage

```dart
void loadingDialog() {
  CodeNoahDialogs(context).showAlert(
    const BodyMediumWhiteText(
      text: 'Loading...',
      textAlign: TextAlign.center,
    ),
  );
}
```

### Asset Image Usage

```dart
CodeNoahImageAsset(
  toImg: 'assets/images/exampleimg.png',
  width: 122,
  height: 122,
),
```

### SVG Image Usage

```dart
CodeNoahImageSvg(
  toImg: 'assets/images/example.svg',
  width: 122,
  height: 122,
),
```

### Color Extension

```dart
Container(
  width: 55,
  height: 55,
  color: ColorExtension.lightGreen,
),
```

### Width and Height Extension

```dart
SizedBox(
  width: ViewSizeValueModelExtension(context).maxWidth(context),
  height: WidthHeightExtension.normalHeight,
),
```
<details>
<summary>Usage: </summary>
 
- `WidthHeightExtension.normalHeight`  // 0.10
- `WidthHeightExtension.standartHeight`  // 0.06
- `WidthHeightExtension.mediumHeight`  // 0.08
- `WidthHeightExtension.largeHeight`  // 0.15
</details>

## License

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

2025 created for @NuhcanATAR

<br><br>



