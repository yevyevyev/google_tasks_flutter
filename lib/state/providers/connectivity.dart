import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

part 'connectivity.g.dart';

@riverpod
Stream<ConnectivityResult> connectivity(ConnectivityRef ref) => Connectivity().onConnectivityChanged;

extension ConnectivityResultX on ConnectivityResult {
  bool get hasConnection => this != ConnectivityResult.none;
}
