import 'package:flutter/material.dart';

class BackArrowButton extends StatefulWidget {
  const BackArrowButton({super.key});

  @override
  State<BackArrowButton> createState() => _BackArrowButtonState();
}

class _BackArrowButtonState extends State<BackArrowButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(
        Icons.arrow_back_ios,
        size: 24,
      ),
      onPressed: () => Navigator.pop(context),
    );
  }
}
