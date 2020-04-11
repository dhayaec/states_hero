import 'package:states_hero/services/permission/i_permission_service.dart';

class FakePermissionService implements IPermissionService {
  @override
  Future<bool> checkStoragePermission() async {
    await Future.delayed(Duration(milliseconds: 500));
    return true;
  }

  @override
  Future<bool> openSettings() async {
    await Future.delayed(Duration(milliseconds: 500));
    return true;
  }

  @override
  Future<bool> requestPermission() async {
    await Future.delayed(Duration(milliseconds: 500));
    return true;
  }
}
