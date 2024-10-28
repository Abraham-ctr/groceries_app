import 'package:flutter/material.dart';
import 'package:groceries_store/models/product.dart';
import 'package:groceries_store/res/utils.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.pushNamed(context, '/descriptionPage', arguments: product);
      },
      child: Container(
        margin: const EdgeInsets.only(left: 10),
        width: 200,
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color(0xffE2E2E2)
          ),
          borderRadius: BorderRadius.circular(18)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
      
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                // product picture
                Container(
                  height: 100,
                  width: 150,
                  decoration: const BoxDecoration(
                    // color: Colors.red
                  ),
                  child: Image.asset(product.imagePath),
                ),
      
                const SizedBox(height: 15),
      
                // product name
                Text(
                  product.name,
                  style: const TextStyle(
                    color: Color(0xff181725),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )
                ),
      
                // product quantity
                Text(
                  product.quantity,
                  style: const TextStyle(
                    color: Color(0xff7C7C7C),
                    fontSize: 15,
                  )
                ),
              ],
            ),
      
      
      
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // product price
                Text(
                  "\$${product.price}",
                   style: const TextStyle(
                    color: Color(0xff181725),
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  )
                ),
      
                // button to add to cart
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: MyColors.primaryColor,
                    borderRadius: BorderRadius.circular(17)
                  ),
                  child: Icon(Icons.add, color: MyColors.tertiaryColor, size: 25,)
                )
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}