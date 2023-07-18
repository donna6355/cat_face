import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

import '../components/components.dart';

class TakePicture extends StatefulWidget {
  const TakePicture({super.key});

  @override
  State<TakePicture> createState() => _TakePictureState();
}

class _TakePictureState extends State<TakePicture> {
  List<CameraDescription> _cameras = [];
  CameraController? _camCtrl;

  @override
  void initState() {
    super.initState();
    _initCamera();
  }

  @override
  void dispose() {
    _camCtrl?.dispose();
    super.dispose();
  }

  Future<void> _initCamera() async {
    _cameras = await availableCameras();

    _camCtrl = CameraController(_cameras[0], ResolutionPreset.max);
    _camCtrl!.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    }).catchError((Object e) {
      if (e is CameraException) {
        switch (e.code) {
          case 'CameraAccessDenied':
            // Handle access errors here.
            break;
          default:
            // Handle other errors here.
            break;
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: _camCtrl == null
          ? const CircularProgressIndicator()
          : Stack(
              children: [
                CameraPreview(_camCtrl!),
                CameraOverlay(),
              ],
            ),
    );
  }
}
