import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DefaultTextField extends StatelessWidget {
  String label;
  String error;
  IconData icon;
  Function(String text) onChanged;

  DefaultTextField({
    required this.label,
    required this.icon,
    required this.onChanged,
    this.error=''
  });

  @override
  Widget build(BuildContext context){
    return TextField(
      onChanged: (value){
        onChanged(value);
      },
      decoration: InputDecoration(
        label: Text(
          label,
          style: TextStyle(
            color: Colors.white
          ),
        ),
        errorText: error,
        suffixIcon: Icon(
          icon,
          color: Colors.white,
        )
      ),
      style: TextStyle(
        color: Colors.white
      ),
    );
  }
}