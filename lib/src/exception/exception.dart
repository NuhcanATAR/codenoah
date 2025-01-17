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
// Description: customized exceptio developed for error situations.
// For more information, visit the repository or contact the publisher.
// -----------------------------------

class ServiceException implements Exception {
  final String message;

  ServiceException(this.message);

  @override
  String toString() {
    return "ServiceException: $message";
  }
}
