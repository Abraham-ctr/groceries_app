import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:groceries_store/models/product.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';

class ProductListScreen extends StatelessWidget {
  final ProductCategory category;
  ProductListScreen({super.key, required this.category});

  List<Product> getProductByCategory(ProductCategory category) {
    return products.where((product) => product.category == category).toList();
  }

  // method to convert enum to user-friendly name
  String _getCategoryDisplayName(ProductCategory category){
    switch (category) {
      case ProductCategory.fruitsAndVegetables:
        return "Fruits & Vegetables";
      case ProductCategory.cookingOil:
        return "Cooking Oil";
      case ProductCategory.meatAndFish:
        return "Meat & Fish";
      case ProductCategory.bakeryAndSnacks:
        return "Bakery & Snacks";
      case ProductCategory.dairyAndEggs:
        return "Dairy & Eggs";
      case ProductCategory.beverages:
        return "Beverages";
      default:
        return category.toString().split('.').last;
    }
  }

  @override
  Widget build(BuildContext context) {
    final categoryProducts = getProductByCategory(category);
    return Scaffold(
      backgroundColor: MyColors.background,

      appBar: AppBar(
        title: Center(child: Text(_getCategoryDisplayName(category) )),
        actions: [
          IconButton(
            onPressed: () { 
              Navigator.pushNamed(context, '/filter');
             }, 
            icon: const Icon(FluentIcons.filter_16_filled),
            
          )
        ],
      ),

      body: GridView.builder(
        itemCount: categoryProducts.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10.0,
          childAspectRatio: 1/1.5
        ), 
        itemBuilder: (context, index){
          return GestureDetector(
            onTap: (){
              Navigator.pushNamed(context, '/descriptionPage', arguments: getProductByCategory(category)[index]);
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
                        width: 130,
                        decoration: const BoxDecoration(
                          // color: Colors.red
                        ),
                        child: Image.asset(getProductByCategory(category)[index].imagePath),
                      ),
      
                const SizedBox(height: 15),
      
                // product name
                Text(
                  getProductByCategory(category)[index].name,
                  style: const TextStyle(
                    color: Color(0xff181725),
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  )
                ),
      
                // product quantity
                Text(
                  getProductByCategory(category)[index].quantity,
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
                  "\$${getProductByCategory(category)[index].price}",
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