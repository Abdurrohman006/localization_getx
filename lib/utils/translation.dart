import 'package:get/get_navigation/src/root/internacionalization.dart';

class Messages extends Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys => {
        "uz_UZ": {
          "hello": "Assalomu alaykum @name",
          "bye": "Hayr salomat bo'ling @name",
          "name": "Ism"
        },
        "en_EN": {"hello": "Hello @name", "bye": "Bye @name", "name": "Name"},
      };
}
