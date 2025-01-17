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
// Description: enum holding the text of validator errors.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

enum ValidatorEnum {
  requiredFieldTr('Zorunlu Alan'),
  requiredFieldEn('Required Field'),
  invalidaValueTr('Geçersiz Değer'),
  invalidValueEn('Invalid Value'),
  emailEmptyTr('E-posta alanı boş bırakılamaz'),
  emailEmptyEn('Email field cannot be left blank'),
  invalidEmailTr('Geçersiz e-posta formatı'),
  invalidEmailEn('Invalid email format'),
  passwordEmptyTr('Şifre alanı boş bırakılamaz'),
  passwordEmptyEn('Password field cannot be left blank'),
  passwordLengthTr('Şifre en az 8 karakter uzunluğunda olmalıdır'),
  passwordLengthEn('Password must be at least 8 characters long'),
  passwordUppercaseTr('Şifre en az bir büyük harf içermelidir'),
  passwordUppercaseEn('Password must contain at least one uppercase letter'),
  passwordLowercaseTr('Şifre en az bir küçük harf içermelidir'),
  passwordLowercaseEn('Password must contain at least one lowercase letter'),
  passwordNumberTr('Şifre en az bir rakam içermelidir'),
  passwordNumberEn('Password must contain at least one number'),
  passwordSpecialCharTr('Şifre en az bir özel karakter içermelidir'),
  passwordSpecialCharEn('Password must contain at least one special character'),
  phoneNumberInvalidTr('Geçersiz Telefon Numarası'),
  phoneNumberInvalidEn('Invalid phone number');

  final String value;
  const ValidatorEnum(this.value);
}
