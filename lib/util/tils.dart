import 'package:flutter/material.dart';

class Tils extends StatelessWidget {
  final String tils;
  final bool isSelected;
  final VoidCallback onTap;
  Tils({
    required this.tils,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 15, top: 20),
        child: Container(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 5),
          decoration: BoxDecoration(
            color:
                isSelected ? Color.fromARGB(255, 189, 187, 207) : Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            tils,
            style: const TextStyle(
                fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
