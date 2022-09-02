import 'package:flutter/material.dart';

class TitleCustom extends StatelessWidget {
  const TitleCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        children: [
          const SizedBox(width: 5),
          Image.asset('assets/images/icon_chat.png'),
          const SizedBox(width: 3),
          Text(
            'Está acontecendo...',
            style: TextStyle(fontSize: 22, color: Colors.purple[900]),
          ),
        ],
      ),
    );
  }
}
