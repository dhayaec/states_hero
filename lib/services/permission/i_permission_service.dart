abstract class IPermissionService {
  Future<bool> checkStoragePermission();

  Future<bool> requestPermission();

  Future<bool> openSettings();
}
