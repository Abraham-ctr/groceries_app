import 'package:flutter/material.dart';
import 'package:groceries_store/models/product.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';

import '../widgets/screen_widgets/checkout_bottom_sheet.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  int _currentNumber = 1;
  _removeQuantity() {
    setState(() {
      _currentNumber--;
    });
  }

  void _addQuantity() {
    setState(() {
      _currentNumber++;
    });
  }

  void openBottomSheet() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("My Cart"),
        automaticallyImplyLeading: false,
        shape: Border(bottom: BorderSide(color: Colors.grey.shade400)),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  final Product prod = products[index];
                  return Container(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    decoration: const BoxDecoration(
                        // color: Colors.red,
                        border: Border(bottom: BorderSide(color: Colors.grey))),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        // image
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Image.asset(prod.imagePath),
                        ),

                        const SizedBox(
                          width: 20,
                        ),

                        // info
                        Container(
                          child: Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // name and close button
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(prod.name,
                                        style: const TextStyle(
                                          color: Color(0xff181725),
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                        )),
                                    IconButton(
                                        onPressed: () {},
                                        icon: const Icon(Icons.close_rounded))
                                  ],
                                ),

                                // quantity
                                Text(prod.quantity,
                                    style: const TextStyle(
                                      color: Color(0xff7C7C7C),
                                      fontSize: 15,
                                    )),

                                // add and remove buttons, price
                                Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      // add and remove button
                                      Row(
                                        children: [
                                          IconButton(
                                              onPressed: _removeQuantity,
                                              icon: const Icon(
                                                Icons.remove,
                                                color: Color(0xffB3B3B3),
                                              )),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 15, vertical: 10),
                                            decoration: BoxDecoration(
                                                border: Border.all(
                                                    color: const Color(
                                                        0xffE2E2E2)),
                                                borderRadius:
                                                    BorderRadius.circular(17)),
                                            child: Text(
                                              _currentNumber.toString(),
                                            ),
                                          ),
                                          IconButton(
                                              onPressed: _addQuantity,
                                              icon: const Icon(
                                                Icons.add,
                                                color: Color(0xff53B175),
                                              )),
                                        ],
                                      ),

                                      // price tag
                                      Text("\$${prod.price.toString()}",
                                          style: const TextStyle(
                                            color: Color(0xff181725),
                                            fontWeight: FontWeight.bold,
                                            fontSize: 23,
                                          ))
                                    ]),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(height: 5),
          Button(
              text: "Go To Checkout",
              onButtonPressed: () {
                // open checkout bottom sheet
                _openCheckoutBottomSheet(context);
              })
        ],
      ),
    );
  }

  void _openCheckoutBottomSheet(BuildContext context){
    showBottomSheet(
      backgroundColor: MyColors.background,
      sheetAnimationStyle: AnimationStyle(duration: const Duration(milliseconds: 500) ),
      context: context, 
      builder: (context){
        return const CheckoutBottomSheet();
      }
    );
  }

  final List<Product> products = [
    // fruits & vegetables
    Product(
      name: "Apple",
      price: 1.99,
      imagePath: AppMedia.apple,
      quantity: "100",
      category: ProductCategory.fruitsAndVegetables,
      description:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Banana",
      price: 1.99,
      imagePath: AppMedia.banana,
      quantity: "100",
      category: ProductCategory.fruitsAndVegetables,
      description:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Guava",
      price: 1.99,
      imagePath: AppMedia.guava,
      quantity: "100",
      category: ProductCategory.fruitsAndVegetables,
      description:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Mango",
      price: 1.99,
      imagePath: "assets/images/fruits_and_vegetables/mango.jpg",
      quantity: "100",
      category: ProductCategory.fruitsAndVegetables,
      description:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Orange",
      price: 1.99,
      imagePath: AppMedia.orange,
      quantity: "100",
      category: ProductCategory.fruitsAndVegetables,
      description:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Strawberry",
      price: 1.99,
      imagePath: AppMedia.strawberry,
      quantity: "100",
      category: ProductCategory.fruitsAndVegetables,
      description:
          "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),

    // cooking oil
    Product(
        name: "Canola Oil",
        price: 19.99,
        imagePath: AppMedia.canola,
        quantity: "100",
        category: ProductCategory.cookingOil),
    Product(
        name: "Corn Oil",
        price: 19.99,
        imagePath: AppMedia.corn,
        quantity: "100",
        category: ProductCategory.cookingOil),
    Product(
        name: "Natural Blends Oil",
        price: 19.99,
        imagePath: AppMedia.naturalBlends,
        quantity: "100",
        category: ProductCategory.cookingOil),
    Product(
        name: "Peanut Oil",
        price: 19.99,
        imagePath: AppMedia.peanut,
        quantity: "100",
        category: ProductCategory.cookingOil),
    Product(
        name: "Sunflower Oil",
        price: 19.99,
        imagePath: AppMedia.sunflower,
        quantity: "100",
        category: ProductCategory.cookingOil),
    Product(
        name: "Vegetable Oil",
        price: 19.99,
        imagePath: AppMedia.vegetable,
        quantity: "100",
        category: ProductCategory.cookingOil),

    // meat & fish
    Product(
        name: "Beef Bone",
        price: 29.99,
        imagePath: AppMedia.beefBone,
        quantity: "3kg",
        category: ProductCategory.meatAndFish),
    Product(
        name: "Chicken",
        price: 29.99,
        imagePath: AppMedia.chicken,
        quantity: "3kg",
        category: ProductCategory.meatAndFish),
    Product(
        name: "Pork",
        price: 29.99,
        imagePath: AppMedia.pork,
        quantity: "3kg",
        category: ProductCategory.meatAndFish),
    Product(
        name: "Salmon",
        price: 29.99,
        imagePath: AppMedia.salmon,
        quantity: "3kg",
        category: ProductCategory.meatAndFish),
    Product(
        name: "Tuna",
        price: 29.99,
        imagePath: AppMedia.tuna,
        quantity: "3kg",
        category: ProductCategory.meatAndFish),

    // bakery & snacks
    Product(
        name: "Bread",
        price: 9.99,
        imagePath: AppMedia.bread,
        quantity: "50",
        category: ProductCategory.bakeryAndSnacks),
    Product(
        name: "Cake",
        price: 9.99,
        imagePath: AppMedia.cake,
        quantity: "50",
        category: ProductCategory.bakeryAndSnacks),
    Product(
        name: "Cheese Cake",
        price: 9.99,
        imagePath: AppMedia.cheeseCake,
        quantity: "50",
        category: ProductCategory.bakeryAndSnacks),
    Product(
        name: "Cookies",
        price: 9.99,
        imagePath: AppMedia.cookie,
        quantity: "50",
        category: ProductCategory.bakeryAndSnacks),
    Product(
        name: "Scones",
        price: 9.99,
        imagePath: AppMedia.scones,
        quantity: "50",
        category: ProductCategory.bakeryAndSnacks),

    // dairy & eggs
    Product(
        name: "Butter",
        price: 39.99,
        imagePath: AppMedia.butter,
        quantity: "30",
        category: ProductCategory.dairyAndEggs),
    Product(
        name: "Cheese",
        price: 39.99,
        imagePath: AppMedia.cheese,
        quantity: "30",
        category: ProductCategory.dairyAndEggs),
    Product(
        name: "Cream",
        price: 39.99,
        imagePath: AppMedia.cream,
        quantity: "30",
        category: ProductCategory.dairyAndEggs),
    Product(
        name: "Eggs",
        price: 39.99,
        imagePath: AppMedia.egg,
        quantity: "30",
        category: ProductCategory.dairyAndEggs),
    Product(
        name: "Milk",
        price: 39.99,
        imagePath: AppMedia.milk,
        quantity: "30",
        category: ProductCategory.dairyAndEggs),

    // beverages
    Product(
        name: "Coca Cola Can",
        price: 0.99,
        imagePath: AppMedia.cocaCola,
        quantity: "120",
        category: ProductCategory.beverages),
    Product(
        name: "Diet Coke Can",
        price: 0.99,
        imagePath: AppMedia.dietCoke,
        quantity: "120",
        category: ProductCategory.beverages),
    Product(
        name: "Pepsi Can",
        price: 0.99,
        imagePath: AppMedia.pepsi,
        quantity: "120",
        category: ProductCategory.beverages),
    Product(
        name: "Sprite Can",
        price: 0.99,
        imagePath: AppMedia.sprite,
        quantity: "120",
        category: ProductCategory.beverages),
    Product(
        name: "Apple & Grape Juice",
        price: 0.99,
        imagePath: AppMedia.grapeJuice,
        quantity: "120",
        category: ProductCategory.beverages),
    Product(
        name: "Orange Juice Can",
        price: 0.99,
        imagePath: AppMedia.orangeJuice,
        quantity: "120",
        category: ProductCategory.beverages),
  ];
}
