import 'package:camera/camera.dart';

class CameraHelper {
  CameraHelper._();

  static List<CameraDescription> _cameras = [];
  static CameraController? _camCtrl;
  static bool _rearCam = true;

  static Future<bool> fetchCamera() async {
    if (_cameras.isEmpty) _cameras = await availableCameras();
    _camCtrl =
        CameraController(_cameras[_rearCam ? 0 : 1], ResolutionPreset.max);
    _camCtrl!.initialize().then((value) => true).catchError((Object e) {
      print('camera error ${e.toString()}');
      return false;
      // if (e is CameraException) {
      //   switch (e.code) {
      //     case 'CameraAccessDenied':
      //       // Handle access errors here.
      //       break;
      //     default:
      //       // Handle other errors here.
      //       break;
      //   }
      // }
    });
    return false;
  }

  static Future<void> switchCamera() async {
    _rearCam = !_rearCam;
    await _camCtrl!.setDescription(_rearCam ? _cameras[0] : _cameras[1]);
    //TODO check camera version
  }

  static Future<void> takePicture() async {
    await _camCtrl?.takePicture();
  }

  static CameraController? get controller => _camCtrl;
}
