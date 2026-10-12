import 'package:flutter/material.dart';

class BuildCard extends StatelessWidget {
  final String title;
  final Widget child;
  const new({
    required this.title,
    required this.child,
    super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Color(0xFF0F172A)),
            ),
            const Divider(height: 20,),
            child,
            ],
          ),
        ),
    );
  }
}