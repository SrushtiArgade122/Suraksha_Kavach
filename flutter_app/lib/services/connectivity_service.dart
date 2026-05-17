import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

class ConnectivityService extends ChangeNotifier {
  bool _isOnline = true;
  final Connectivity _connectivity = Connectivity();

  // Change this to dynamic to avoid the assignment error across different versions
  StreamSubscription? _subscription;

  bool get isOnline => _isOnline;

  ConnectivityService() {
    _initConnectivity();
    _subscription = _connectivity.onConnectivityChanged.listen((results) {
      _updateConnectionStatus(results);
    });
  }

  Future<void> _initConnectivity() async {
    try {
      final results = await _connectivity.checkConnectivity();
      _updateConnectionStatus(results);
    } catch (e) {
      debugPrint("Connectivity Error: $e");
    }
  }

  // Use dynamic here so it accepts both a single Result and a List of Results
  void _updateConnectionStatus(dynamic results) {
    bool previousStatus = _isOnline;

    if (results is List<ConnectivityResult>) {
      _isOnline = !results.contains(ConnectivityResult.none);
    } else if (results is ConnectivityResult) {
      _isOnline = results != ConnectivityResult.none;
    }

    if (previousStatus != _isOnline) {
      notifyListeners();
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }
}
