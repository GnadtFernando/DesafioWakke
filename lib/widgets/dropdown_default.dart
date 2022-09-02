import 'package:flutter/material.dart';

const List<String> list = <String>['Dúvidas', 'Sugestões', 'Reportar Bugs'];

class DropdownDefault extends StatefulWidget {
  const DropdownDefault({super.key});

  @override
  State<DropdownDefault> createState() => _DropdownDefaultState();
}

class _DropdownDefaultState extends State<DropdownDefault> {
  String dropdownValue = list.first;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return DropdownButtonFormField<String>(
      focusColor: Colors.transparent,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.deepPurpleAccent),
          borderRadius: BorderRadius.all(
            Radius.circular(size.width * 0.04),
          ),
        ),
      ),
      value: dropdownValue,
      onChanged: (String? value) {
        setState(() {
          dropdownValue = value!;
        });
      },
      items: list.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
    );
  }
}
