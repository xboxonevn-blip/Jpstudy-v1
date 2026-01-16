import 'content_db_loader_stub.dart'
    if (dart.library.io) 'content_db_loader_io.dart';

const String kContentAssetPath = 'assets/db/content_v1.db';
const String kContentDbFileName = 'content.db';

Future<String> ensureContentDbReady({
  String assetPath = kContentAssetPath,
  String fileName = kContentDbFileName,
  bool forceReplace = false,
}) {
  return ensureContentDbReadyImpl(
    assetPath: assetPath,
    fileName: fileName,
    forceReplace: forceReplace,
  );
}
