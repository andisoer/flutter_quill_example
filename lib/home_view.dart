import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' hide Text;

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final QuillController quillController = QuillController.basic();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Quill'),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            QuillToolbar.basic(controller: quillController),
            QuillEditor(
              controller: quillController,
              focusNode: FocusNode(),
              scrollController: ScrollController(),
              scrollable: false,
              padding: const EdgeInsets.all(16),
              autoFocus: false,
              readOnly: false,
              expands: false,
              placeholder: 'Ketik disini',
            ),
          ],
        ),
      ),
    );
  }
}
