import 'package:flutter/material.dart';
class CoffeTpp extends StatelessWidget{
  final String coffeType;
  final bool isSelect;
  final VoidCallback onTap;
  const CoffeTpp(
  {
    required this.coffeType,
    required this.onTap,
    super.key,
    required this.isSelect});
  @override
  Widget build(BuildContext context){
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only (left: 25.0),
      child: Text(
        coffeType,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isSelect? Colors.blue : Colors.lightBlueAccent),

        ),
      ),
      );

  }
}
