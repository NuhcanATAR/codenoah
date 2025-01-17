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
// Description: property to set the status for button widget.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

enum ButtonTypes {
  primaryColorButton,
  iconPrimaryColorButton,
  borderPrimaryColorButton,
  borderErrorColorButton,
}

extension ButtonType on ButtonTypes {
  int get buttonTypeValue {
    switch (this) {
      case ButtonTypes.primaryColorButton: // primary color filled button
        return 1;
      case ButtonTypes
            .iconPrimaryColorButton: // button with main color filled with icon
        return 2;
      case ButtonTypes
            .borderPrimaryColorButton: // button with thickness color main color and no fill color inside
        return 3;
      case ButtonTypes
            .borderErrorColorButton: // button without filler color inside, with thickness color red warning color
        return 4;
    }
  }
}
