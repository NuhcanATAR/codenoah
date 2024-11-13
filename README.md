
<p align="center">
<a href="https://github.com/NuhcanATAR"></a> 
<a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/badge/license-MIT-purple.svg" alt="License: MIT"></a>   
<a href="https://medium.com/@nuhcanatar20"> <img src="https://img.shields.io/badge/Medium-12100E?style=for-the-badge&logo=medium&logoColor=white" alt="Medium: nuhcanatar20">  </a> 
 


</p>

# codenoah

Codenoah paketi, Flutter ile uygulama geliştirirken ihtiyacınız olan bir dizi tasarım bileşeni ve kullanışlı genişletme (extension) sunan kapsamlı bir yardımcı pakettir. Codenoah, özellikle tasarım ve kullanıcı deneyimi geliştirmeye yönelik çeşitli araçlar ve widget’lar içerir. Bu paket ile Flutter projelerinizi daha hızlı ve etkili bir şekilde geliştirebilir, kod tekrarı ve yapılandırma sürecini en aza indirebilirsiniz.


## View Size extension

```dart
 Container(
  width: ViewSizeValueModelExtension(context).maxWidth(context),
  height: ViewSizeValueModelExtension(context).dynamicHeight(context, 0.2),
  color: Colors.red,
),
```


### BorderRadius

Kenar Yumuşatma için kullanılacak extension

`RadiusExtension // extension`

<details open> 

<summary>Kullanım:</summary> 

- `RadiusExtension.lowRadiusValue` //  20.0
- `RadiusExtension.normalRadiusValue` // 12.0
- `RadiusExtension.highRadiusValue` // 4.0
- `RadiusExtension.circularHighValue` // 124
- `RadiusExtension.circularNormalValue` // 24
- `RadiusExtension.circularMediumValue` // 15 
- `RadiusExtension.circularLowValue` // 4
  
</details>


### Kopyalama

Metin kopyalama için kullanım.

```dart
 onTap: (){
   CodeNoahClipboard.controlC('Merhaba');
}
```

### Yönlendirme

```dart
// Normal Yöneldirme
() {
  CodeNoahNavigatorRouter.push(
    context,
    ViewScreen(),
  );
},

// Normal Pozisyonlu Ekran Yönlendirme
() {
  CodeNoahNavigatorRouter.push(
    context,
    ViewScreen(),
    direction: SlideDirection.leftToRight,
  );
},

// Geri Dönüş Olmadan Normal Pozisyonlu Ekran Yönlendirme
() {
  CodeNoahNavigatorRouter.pushAndRemoveUntil(
    context,
    ViewScreen(),
  );
},

// Geri Dönüş Olmadan Normal Pozisyonlu Ekran Yöneldirme
() {
  CodeNoahNavigatorRouter.pushAndRemoveUntil(
    context,
    ViewScreen(),
    direction: SlideDirection.leftToRight,
  );
},
```
<details>

  
<summary> SlideDirection Özellikleri: </summary>

- `SlideDirection.leftToRight`
- `SlideDirection.rightToLeft`
- `SlideDirection.topToBottom`
- `SlideDirection.bottomToTop`
  </details>


### Padding

İç boşluk kullanımları için:  `PaddingSizedsUtility`

<details>
<summary> Kullanım: </summary>
 
- `PaddingSizedsUtility.hugePaddingValue` // 125.0
- `PaddingSizedsUtility.hightPaddingValue` // 55.0
- `PaddingSizedsUtility.normalPaddingValue` // 16.0
- `PaddingSizedsUtility.mediumPaddingValue` // 10.0
- `PaddingSizedsUtility.smallPaddingValue` // 5.0
</details>

### Margin

İç boşluk kullanımları için:  `MarginSizedsUtility`

<details>
<summary> Kullanım: </summary>
 
- `MarginSizedsUtility.hugeMarginValue` // 125.0
- `MarginSizedsUtility.hightMarginValue` // 55.0
- `MarginSizedsUtility.normalMarginValue` // 16.0
- `MarginSizedsUtility.mediumMarginValue` // 10.0
- `MarginSizedsUtility.smallMarginValue` // 5.0
</details>

### İkon

Hazır İkonları Kullanmak için :  `AppIcons`

```dart
 late String pngValue = AppIcons.accountPassword.toPng;
  late String svgValue = AppIcons.accountPassword.toSvg;
// 
AppIcons.accountPassword.toSvgImg(
  Colors.red,
  55,
  55,
),
```

### Firebase Servisi

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

Exception Kullanımı için :  `ServiceException`

```dart
 
Future<void> hello() async {
  try {
    //
  } catch (e) {
    throw ServiceException('Hello');
  }
}
```


### Validator Kullanımı

Field Validator Doğrulama için :  `CodeNoahValidator`

```dart
TextFormField(
  validator: (String? value) =>
      CodeNoahValidator(value: value, context: context).emptyNormalCheck,
),
```

<details>
<summary> Kullanım: </summary>
 
- `CodeNoahValidator(value: value, context: context).emptyNormalCheck` 
- `CodeNoahValidator(value: value, context: context).emptyNumberCheck` 
- `CodeNoahValidator(value: value, context: context).emailCheck` 
- `CodeNoahValidator(value: value, context: context).passwordCheck` 
- `CustomValidator(value: value, context: context).phoneNumberValidator(value)`
</details>


### Özelleştirilmiş Buton Kullanımı

```dart
CustomButtonWidget(
  width: ViewSizeValueModelExtension(context).maxWidth(context),
  text: 'Hello',
  func: () {},
  btnStatus: ButtonTypes.primaryColorButton,
),
```

<details>
<summary> ButtonTypes Kullanım: </summary>
 
- `ButtonTypes.primaryColorButton` 
- `ButtonTypes.iconPrimaryColorButton` 
- `ButtonTypes.borderPrimaryColorButton` 
- `ButtonTypes.borderErrorColorButton` 
</details>

### Email Field Kullanımı

```dart
CustomEmailFieldWidget(
  emailController: TextEditingController(), // controller
  hintText: 'E-mail', //  field adı
  onChanged: (val) {}, // onChanged
  isLabelText: true, // field içinde veya üstünde gösterme 
  width: ViewSizeValueModelExtension(context).maxWidth(context), // field genişliği
),
```

### Şifre Field Kullanımı

```dart
CustomPasswordFieldWidget(
  passwordController: TextEditingController(), // conroller
  hintText: 'Şifre', // field adı
  onChanged: (val) {}, // onChanged
  isValidator: true, // doğrulma durumu
  isLabelText: true, // field içinde veya üstünde gösterme
  width: ViewSizeValueModelExtension(context).maxWidth(context), // field genişliği
),
```

### Normal Yazı Field

```dart
NormalTextFieldWidget(
  controller: TextEditingController(), // controller
  hintText: 'Ad Soyad', // field adı
  explanationStatus: false, // açıklama field olma durumu 
  onChanged: (val) {}, // onChanged
  isValidator: true, // doğrulama durumu
  enabled: true, // field aktif olma durumu
  isLabelText: true, // field içinde veya üstünde gösterme
  width: ViewSizeValueModelExtension(context).maxWidth(context), // field genişliği
),
```

### Numara Field

```dart
NumberTextFieldWidget(
  controller: TextEditingController(), // controller
  hintText: 'Fiyat', // field adı
  onChanged: (val) {}, // onChanged  
  isLabelText: true, // field içinde veya üstünde gösterme
  width: ViewSizeValueModelExtension(context).maxWidth(context), // field genişliği
),
```

### Renk Extension

```dart
Container(
  width: 55,
  height: 55,
  color: ColorExtension.lightGreen,
),
```

### Genişlik ve Yükseklik Extension

```dart
SizedBox(
  width: ViewSizeValueModelExtension(context).maxWidth(context),
  height: WidthHeightExtension.normalHeight,
),
```
<details>
<summary> Kullanım: </summary>
 
- `WidthHeightExtension.normalHeight`  // 0.10
- `WidthHeightExtension.standartHeight`  // 0.06
- `WidthHeightExtension.mediumHeight`  // 0.08
- `WidthHeightExtension.largeHeight`  // 0.15
</details>

## License

[![License](https://img.shields.io/badge/license-MIT-blue.svg)](/LICENSE)

2024 created for @NuhcanATAR

<br><br>



