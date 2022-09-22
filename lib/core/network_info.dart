// ignore: import_of_legacy_library_into_null_safe
import 'package:data_connection_checker/data_connection_checker.dart';

abstract class NetworkInfoInterface {
  Future<bool> get isConnected;
}

class NetworkInfoImpl implements NetworkInfoInterface {
  final DataConnectionChecker connectionChecker;
  NetworkInfoImpl({required this.connectionChecker});
  @override
  Future<bool> get isConnected => connectionChecker.hasConnection;
}
