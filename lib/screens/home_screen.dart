import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:groceries_store/models/product.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/screen_widgets/product_card.dart';
import 'package:groceries_store/widgets/screen_widgets/double_text.dart';
import 'package:groceries_store/widgets/screen_widgets/groceries_categories.dart';
import 'package:groceries_store/widgets/screen_widgets/my_carousel.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,

      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 60, left: 15, right: 15),
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.28),
              decoration: const BoxDecoration(
                // color: Colors.red
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppMedia.orangeLogo, width: 30, height: 40),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(FluentIcons.location_12_filled, size: 17),
                      Text(" Dhaka, Banassre")
                    ],
                  ),
                  const SizedBox(height: 15),

                  SizedBox(
                    width: Utils.getWidth(context),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: const Icon(FluentIcons.search_12_regular, color: Color(0xff181B19) ),
                        hintText: "Search Store",
                        hintStyle: const TextStyle(color: Color(0xff7C7C7C) ),
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(15), borderSide: BorderSide.none ),
                        filled: true,
                        fillColor: const Color(0xffF2F3F2)
                        
                      ),
                    ),
                  )
                ],
              ),
            ),

            // CAROUSEL
            SizedBox(
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.17),
              child: const MyCarousel(),
            ),

            SizedBox(  //DOUBLE TEXT
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.09),
              // color: Colors.green,
              child: const DoubleText(firstText: 'Exclusive Offer',),
            ),

            SizedBox(  //PRODUCTS TILE
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.40),
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length > 4 ? 4 : products.length,
                itemBuilder: (context, index) {

                  return ProductCard(product: products[index]);
                },
              ),
            ),

            SizedBox(  //DOUBLE TEXT
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.09),
              // color: Colors.green,
              child: const DoubleText(firstText: 'Best Selling',),
            ),

            SizedBox(  //PRODUCTS TILE
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.40),
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length > 4 ? 4 : products.length,
                itemBuilder: (context, index) {

                  return ProductCard(product: products[index]);
                },
              ),
            ),

            SizedBox(  //DOUBLE TEXT
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.09),
              // color: Colors.green,
              child: const DoubleText(firstText: 'Groceries',),
            ),

            Container(  //SLIDING GROCERIES CATEGORY
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.18),
              padding: const EdgeInsets.only(right: 15,),
              // color: Colors.blue,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 1,
                itemBuilder: (context, index){
                  GroceriesCategories pulses =  GroceriesCategories(text: "Pulses", imagePath: AppMedia.pulses, bgColor: const Color(0xffF8A44C) );
                  GroceriesCategories rice =  GroceriesCategories(text: "Rice", imagePath: AppMedia.rice, bgColor: const Color(0xff53B175) );
                  return Row(
                    children: [
                      pulses,
                      rice
                    ],
                  );
                }
              ),
            ),

            SizedBox(  //PRODUCTS TILE
              width: Utils.getWidth(context),
              height: Utils.setHeight(context, 0.40),
              // color: Colors.yellow,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length > 4 ? 4 : products.length,
                itemBuilder: (context, index) {

                  return ProductCard(product: products[index]);
                },
              ),
            ),

            const SizedBox(height: 20,)

          ],
        ),
      ),
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
      description: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Banana", 
      price: 1.99, 
      imagePath: AppMedia.banana, 
      quantity: "100", 
      category: ProductCategory.fruitsAndVegetables,
      description: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Guava", 
      price: 1.99, 
      imagePath: AppMedia.guava, 
      quantity: "100", 
      category: ProductCategory.fruitsAndVegetables,
      description: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Mango", 
      price: 1.99, 
      imagePath: "assets/images/fruits_and_vegetables/mango.jpg", 
      quantity: "100", 
      category: ProductCategory.fruitsAndVegetables,
      description: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Orange", 
      price: 1.99, 
      imagePath: AppMedia.orange, 
      quantity: "100", 
      category: ProductCategory.fruitsAndVegetables,
      description: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),
    Product(
      name: "Strawberry", 
      price: 1.99, 
      imagePath: AppMedia.strawberry, 
      quantity: "100", 
      category: ProductCategory.fruitsAndVegetables,
      description: "Apples are nutritious. Apples may be good for weight loss. apples may be good for your heart. As part of a healtful and varied diet.",
    ),

    // cooking oil
    Product(
      name: "Canola Oil", 
      price: 19.99, 
      imagePath: AppMedia.canola, 
      quantity: "100", 
      category: ProductCategory.cookingOil
    ),
    Product(
      name: "Corn Oil", 
      price: 19.99, 
      imagePath: AppMedia.corn, 
      quantity: "100", 
      category: ProductCategory.cookingOil
    ),
    Product(
      name: "Natural Blends Oil", 
      price: 19.99, 
      imagePath: AppMedia.naturalBlends, 
      quantity: "100", 
      category: ProductCategory.cookingOil
    ),
    Product(
      name: "Peanut Oil", 
      price: 19.99, 
      imagePath: AppMedia.peanut, 
      quantity: "100", 
      category: ProductCategory.cookingOil
    ),
    Product(
      name: "Sunflower Oil", 
      price: 19.99, 
      imagePath: AppMedia.sunflower, 
      quantity: "100", 
      category: ProductCategory.cookingOil
    ),
    Product(
      name: "Vegetable Oil", 
      price: 19.99, 
      imagePath: AppMedia.vegetable, 
      quantity: "100", 
      category: ProductCategory.cookingOil
    ),

    // meat & fish
    Product(
      name: "Beef Bone",
      price: 29.99, 
      imagePath: AppMedia.beefBone, 
      quantity: "3kg", 
      category: ProductCategory.meatAndFish
    ),
    Product(
      name: "Chicken", 
      price: 29.99, 
      imagePath: AppMedia.chicken, 
      quantity: "3kg", 
      category: ProductCategory.meatAndFish
    ),
    Product(
      name: "Pork", 
      price: 29.99, 
      imagePath: AppMedia.pork, 
      quantity: "3kg", 
      category: ProductCategory.meatAndFish
    ),
    Product(
      name: "Salmon", 
      price: 29.99, 
      imagePath: AppMedia.salmon, 
      quantity: "3kg", 
      category: ProductCategory.meatAndFish
    ),
    Product(
      name: "Tuna", 
      price: 29.99, 
      imagePath: AppMedia.tuna, 
      quantity: "3kg", 
      category: ProductCategory.meatAndFish
    ),

    // bakery & snacks
    Product(
      name: "Bread", 
      price: 9.99, 
      imagePath: AppMedia.bread, 
      quantity: "50", 
      category: ProductCategory.bakeryAndSnacks
    ),
    Product(
      name: "Cake", 
      price: 9.99, 
      imagePath: AppMedia.cake, 
      quantity: "50", 
      category: ProductCategory.bakeryAndSnacks
    ),
    Product(
      name: "Cheese Cake", 
      price: 9.99, 
      imagePath: AppMedia.cheeseCake, 
      quantity: "50", 
      category: ProductCategory.bakeryAndSnacks
    ),
    Product(
      name: "Cookies", 
      price: 9.99, 
      imagePath: AppMedia.cookie, 
      quantity: "50", 
      category: ProductCategory.bakeryAndSnacks
    ),
    Product(
      name: "Scones", 
      price: 9.99, 
      imagePath: AppMedia.scones, 
      quantity: "50", 
      category: ProductCategory.bakeryAndSnacks
    ),

    // dairy & eggs
    Product(
      name: "Butter", 
      price: 39.99, 
      imagePath: AppMedia.butter, 
      quantity: "30", 
      category: ProductCategory.dairyAndEggs
    ),
    Product(
      name: "Cheese", 
      price: 39.99, 
      imagePath: AppMedia.cheese, 
      quantity: "30", 
      category: ProductCategory.dairyAndEggs
    ),
    Product(
      name: "Cream", 
      price: 39.99, 
      imagePath: AppMedia.cream, 
      quantity: "30", 
      category: ProductCategory.dairyAndEggs
    ),
    Product(
      name: "Eggs", 
      price: 39.99, 
      imagePath: AppMedia.egg, 
      quantity: "30", 
      category: ProductCategory.dairyAndEggs
    ),
    Product(
      name: "Milk", 
      price: 39.99, 
      imagePath: AppMedia.milk, 
      quantity: "30", 
      category: ProductCategory.dairyAndEggs
    ),

    // beverages
    Product(
      name: "Coca Cola Can", 
      price: 0.99, 
      imagePath: AppMedia.cocaCola, 
      quantity: "120", 
      category: ProductCategory.beverages
    ),
    Product(
      name: "Diet Coke Can", 
      price: 0.99, 
      imagePath: AppMedia.dietCoke, 
      quantity: "120", 
      category: ProductCategory.beverages
    ),
    Product(
      name: "Pepsi Can", 
      price: 0.99, 
      imagePath:AppMedia.pepsi, 
      quantity: "120", 
      category: ProductCategory.beverages
    ),
    Product(
      name: "Sprite Can", 
      price: 0.99, 
      imagePath: AppMedia.sprite, 
      quantity: "120", 
      category: ProductCategory.beverages
    ),
    Product(
      name: "Apple & Grape Juice", 
      price: 0.99, 
      imagePath: AppMedia.grapeJuice, 
      quantity: "120", 
      category: ProductCategory.beverages
    ),
    Product(
      name: "Orange Juice Can", 
      price: 0.99, 
      imagePath: AppMedia.orangeJuice, 
      quantity: "120", 
      category: ProductCategory.beverages
    ),
  ];

}
