import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';

class CheckoutBottomSheet extends StatelessWidget {
  const CheckoutBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
      child: Container(
        height: 420,
        padding: const EdgeInsets.only(top: 20, left: 25, right: 20),
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(topLeft: Radius.circular(17), topRight: Radius.circular(17))
        ),
        child: Column(
          children: [
            // title and icon
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Checkout",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w500
                  ),
                ),
                
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const Icon(Icons.close)
                )
              ],
            ),
      
            const SizedBox(height: 20),
            const Divider(),
            const SizedBox(height: 10),
      
            // delivery
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "Select Method",
                      style: TextStyle(
                        fontSize: 16,
                  ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_rounded, size: 16,)
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
      
      
            // payment
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Payment",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500
                  ),
                ),
                const Row(
                  children: [
                    Icon(Icons.credit_card, size: 20,),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_rounded, size: 16,)
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
      
            // promo code
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Promo Code",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "Pick Discount",
                      style: TextStyle(
                        fontSize: 16,
                  ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_rounded, size: 16,)
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
            const SizedBox(height: 10),
      
            // total cost
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Cost",
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.grey.shade500
                  ),
                ),
                const Row(
                  children: [
                    Text(
                      "\$13.97",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500
                  ),
                    ),
                    SizedBox(width: 10),
                    Icon(Icons.arrow_forward_ios_rounded, size: 16,)
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            const Divider(),
      
            // text
            const SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "By placing an order you agree to our",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                    ),
                  ),
      
                  Row(
                    children: [
                      Text(
                    "Terms",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                    ),
                  ),
                  Text(
                    " And ",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey
                    ),
                  ),
                  Text(
                    "Conditions",
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black
                    ),
                  ),
                    ],
                  ),
                ],
              )
            ),
      
            const SizedBox(height: 10),
      
            // button
            Button(text: "Place Order", onButtonPressed: (){Navigator.pushNamed(context, '/orderAccepted'); }  )
          ],
        ),
      ),
    );
  }
}