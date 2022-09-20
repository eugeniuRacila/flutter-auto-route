import 'package:bristoli/services/dummy_service.dart';

class ServiceLocator {
  static final ServiceLocator _instance = ServiceLocator._();

  static ServiceLocator get instance => _instance;

  late final DummyService dummyService;

  ServiceLocator._() {
    dummyService = DummyService();
  }
}
