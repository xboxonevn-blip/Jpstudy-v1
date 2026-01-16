import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';

Future<String> ensureContentDbReadyImpl({
  required String assetPath,
  required String fileName,
  required bool forceReplace,
}) async {
  final dir = await getApplicationDocumentsDirectory();
  final target = File(p.join(dir.path, fileName));

  if (!forceReplace && await target.exists()) {
    return target.path;
  }

  final bytes = await rootBundle.load(assetPath);
  final temp = File('${target.path}.new');
  await temp.writeAsBytes(bytes.buffer.asUint8List(), flush: true);

  if (await target.exists()) {
    await target.delete();
  }
  return temp.rename(target.path).then((file) => file.path);
}
