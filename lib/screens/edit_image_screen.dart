import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_editor/widgets/edit_image_viewmodel.dart';

class EditImageScreen extends StatefulWidget {
  final String selectedImage;

  const EditImageScreen({Key? key, required this.selectedImage})
      : super(key: key);

  @override
  State<EditImageScreen> createState() => _EditImageScreenState();
}

class _EditImageScreenState extends EditImageViewModel {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Image.file(
          File(
            widget.selectedImage,
          ),
        ),
        floatingActionButton: _addNewTextFloatingActionButton,
      ),
    );
  }

  Widget get _addNewTextFloatingActionButton => FloatingActionButton(
        onPressed: () => addNewDialog(context),
        backgroundColor: Colors.white,
        tooltip: 'Add New Text..',
        child: const Icon(
          Icons.edit,
          color: Colors.black87,
        ),
      );
}
