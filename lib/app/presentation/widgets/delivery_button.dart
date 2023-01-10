import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';
import 'package:flutter/material.dart';

class DeliveryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final EdgeInsets padding;
  const DeliveryButton({
    super.key,
    required this.onTap,
    required this.text,
    required this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: DeliveryColors.deliveryGradient,
          ),
        ),
        child: Padding(
          padding: padding,
          child: Text(
            text,
            style: const TextStyle(
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        // height: 20,
      ),
    );
  }
}
