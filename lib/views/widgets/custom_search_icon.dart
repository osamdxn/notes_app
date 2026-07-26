
 import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
    const CustomSearchIcon({super.key, required this.icon , required this.onTap});
    final IconData icon ;
    final VoidCallback onTap;
    @override
    Widget build(BuildContext context) {
      return Container(
        height: 47,
        width: 47,
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: .05),
          borderRadius: BorderRadius.circular(16),
        ),
        child: Center(
          child: IconButton(
            icon: Icon(icon),
            onPressed: onTap,
            ),
        ),
      );
    }
  }