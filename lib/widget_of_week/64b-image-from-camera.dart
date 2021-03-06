import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//Image
//https://www.youtube.com/watch?v=7oIAs-0G4mw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=66&ab_channel=Flutter

class Widget64b extends StatefulWidget {
  @override
  _Widget64bState createState() => _Widget64bState();
}

class _Widget64bState extends State<Widget64b> {
  File imageFile;

  Future<void> _getImageFile(ImageSource source) async {
    PickedFile selectedFile = await ImagePicker().getImage(source: source);
    setState(() {
      imageFile = File(selectedFile.path);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('#Widget 64b : Image from Camera'),
      ),
      body: Center(
        child: imageFile == null
            ? const Text('No Image')
            : Image.memory(imageFile.readAsBytesSync()),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.camera),
        onPressed: () => _getImageFile(ImageSource.camera),
      ),
    );
  }
}
