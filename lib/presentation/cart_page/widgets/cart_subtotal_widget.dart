import 'package:flutter/material.dart';

class CartSubtotalWidget extends StatelessWidget {
  const CartSubtotalWidget({
    super.key,
    required this.subTotal,
  });

  final int subTotal;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 60,
      child: Center(
        child: RichText(
          text: TextSpan(
            text: "Cart Subtotal ",
            style: const TextStyle(
                color: Colors.black, fontSize: 24),
            children: [
              const WidgetSpan(
                child: SizedBox(
                  width: 10,
                ),
              ),
              const TextSpan(
                  text: ":",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold)),
              const WidgetSpan(
                child: SizedBox(
                  width: 10,
                ),
              ),
              const TextSpan(text: "₹"),
              TextSpan(
                text: subTotal.toString(),
                style: const TextStyle(
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
