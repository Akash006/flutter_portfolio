import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_portfolio/widgets/appBar.dart';
import 'package:image_picker/image_picker.dart';

class MyImagePickerWidget extends StatefulWidget {
  const MyImagePickerWidget({super.key});

  @override
  State<MyImagePickerWidget> createState() => _MyImagePickerWidgetState();
}

class _MyImagePickerWidgetState extends State<MyImagePickerWidget> {
  final _picker = ImagePicker();
  XFile? file;
  List<XFile>? _files;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppbarWidget(titleText: "Image Picker"),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 300,
              width: double.infinity,
              color: Colors.grey,
              child: file != null
                  ? Image.file(
                File(file!.path),
                fit: BoxFit.cover,
              )
                  : Text('Not Picked'),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () async {
                  final XFile? photo = await _picker.pickImage(
                      source: ImageSource.gallery);
                  setState(() {
                    file = photo;
                  });
                },
                child: Text("Upload Image")
            ),
            TextButton(
                onPressed: () async {
                  final List<XFile>? images = await _picker.pickMultiImage();
                  setState(() {
                    _files = images;
                    for (int i = 0; i < _files!.length; i++) {
                      print(_files![i].path);
                    }
                  });
                },
                child: Text('Pick Multiple Image'))
          ],
        ),
      ),
    );
  }
}