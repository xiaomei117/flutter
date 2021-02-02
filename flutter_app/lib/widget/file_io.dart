import 'package:path_provider/path_provider.dart';
import 'dart:io';

class FileMaterial{
  Future<File> getLocalFile() async {
    // get the path to the document directory.
    String dir = (await getApplicationDocumentsDirectory()).path;
    return new File('$dir/test.json');
  }

  Future<String> read() async {
    try {
      File file = await getLocalFile();
      // read the variable as a string from the file.
      String contents = await file.readAsString();
      return contents;
    } on FileSystemException {
      return '';
    }
  }
}