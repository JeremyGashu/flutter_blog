String sanitizeString({String value}) {
  String sanitizedString = value.replaceAll(r'="', "='");
  sanitizedString = sanitizedString.replaceAll('"/>', "'/>");
  sanitizedString = sanitizedString.replaceAll('">', "'>");

  List<String> val = sanitizedString.split('\n');
  String cleared = "";
  bool isListItem = false;

  int currentLine = 0;

  val.forEach((element) {
    if (element.trim().startsWith("\"text\"")) {
      String content = element.substring(element.indexOf(":"));
      int firstIndex = content.indexOf("\"");
      int lastIndex = content.lastIndexOf("\"");
      String substring = content.substring(firstIndex + 1, lastIndex);
      substring = substring.replaceAll("\"", "'");
      if (val[currentLine + 1] != null && val[currentLine + 1].trim() != "}") {
        cleared += "\"text\" : \"$substring\",\n";
      } else {
        cleared += "\"text\" : \"$substring\"\n";
      }
    } else if (element.trim().startsWith("\"link\"")) {
      String content = element.substring(element.indexOf(":"));
      int firstIndex = content.indexOf("\"");
      int lastIndex = content.lastIndexOf("\"");
      String substring = content.substring(firstIndex + 1, lastIndex);
      substring = substring.replaceAll("\"", "'");
      if (val[currentLine + 1] != null && val[currentLine + 1].trim() != "}") {
        cleared += "\"link\" : \"$substring\",\n";
      } else {
        cleared += "\"link\" : \"$substring\"\n";
      }
    } else if (element.trim().startsWith("\"caption\"")) {
      String content = element.substring(element.indexOf(":"));
      int firstIndex = content.indexOf("\"");
      int lastIndex = content.lastIndexOf("\"");
      String substring = content.substring(firstIndex + 1, lastIndex);
      substring = substring.replaceAll("\"", "''");
      if (val[currentLine + 1] != null && val[currentLine + 1].trim() != "}") {
        cleared += "\"caption\" : \"$substring\",\n";
      } else {
        cleared += "\"caption\" : \"$substring\"\n";
      }
    } else if (element.trim().startsWith("\"items\"")) {
      isListItem = true;
      if (val[currentLine + 1] != null &&
          !val[currentLine + 1].trim().startsWith("}")) {
        cleared += "\"items\" : [\n";
      } else {
        isListItem = false;
        cleared += "\"items\" : []\n";
      }
    } else {
      if (isListItem) {
        if (val[currentLine] != null &&
            val[currentLine].trim().startsWith('\"')) {
          String content = val[currentLine];
          int firstIndex = content.indexOf("\"");
          int lastIndex = content.lastIndexOf("\"");
          String substring = content.substring(firstIndex + 1, lastIndex);

          substring = substring.replaceAll("\"", "''");
          print('current  substring => $substring');
          if (val[currentLine + 1] != null &&
              val[currentLine + 1].trim() != "]") {
            cleared += "\"$substring\",\n";
          } else {
            cleared += "\"$substring\"\n";
          }
        } else {
          isListItem = false;
          cleared += "$element\n";
        }
        // print('val => ${val[currentLine].trim()}');
      } else {
        cleared += "$element\n";
      }
    }

    currentLine++;
  });
  return cleared;
}
