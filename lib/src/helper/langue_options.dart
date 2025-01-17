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
// Description: language selection feature for form validator.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

enum LanguageOptions {
  turkish,
  english,
}

extension LangueOptionsExtension on LanguageOptions {
  int get languageValue {
    switch (this) {
      case LanguageOptions.turkish:
        return 1;
      case LanguageOptions.english:
        return 2;
    }
  }
}
