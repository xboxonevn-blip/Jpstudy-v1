import 'package:drift/drift.dart';

import 'content_database_connection_stub.dart'
    if (dart.library.html) 'content_database_connection_web.dart'
    if (dart.library.io) 'content_database_connection_native.dart';

Future<QueryExecutor> openContentConnection() => openContentConnectionImpl();
