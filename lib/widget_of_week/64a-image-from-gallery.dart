import 'dart:io';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

//Image
//https://www.youtube.com/watch?v=7oIAs-0G4mw&list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG&index=66&ab_channel=Flutter

class Widget64a extends StatefulWidget {
  @override
  _Widget64aState createState() => _Widget64aState();
}

class _Widget64aState extends State<Widget64a> {
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
        title: const Text('#Widget 64a : Image from Gallery'),
      ),
      body: Center(
        child:
        imageFile == null ? const Text('No Image') : Image.file(imageFile),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.file_upload),
        onPressed: () => _getImageFile(ImageSource.gallery),
      ),
    );
  }
}