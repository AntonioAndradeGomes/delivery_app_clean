import 'package:flutter/material.dart';

import 'package:delivery_app_clean_architecture/app/presentation/colors.dart';

class DeliveryButton extends StatelessWidget {
  final VoidCallback onTap;
  final String text;
  final EdgeInsets padding;
  final double? height;
  const DeliveryButton({
    Key? key,
    required this.onTap,
    required this.text,
    required this.padding,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
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
          child: Center(
            child: Text(
              text,
              style: const TextStyle(
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        // height: 20,
      ),
    );
  }
}
