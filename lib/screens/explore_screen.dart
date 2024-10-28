import 'package:flutter/material.dart';
import 'package:groceries_store/models/product.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/res/utils.dart';

class ExploreScreen extends StatelessWidget {
  ExploreScreen({super.key});

  final List<ProductCategory> categories = ProductCategory.values;

  // a map to define different colors for each category
  final Map<ProductCategory, Color> categoryColors = {
    ProductCategory.fruitsAndVegetables: const Color(0xff53B175),
    ProductCategory.cookingOil: const Color(0xffF8A44C),
    ProductCategory.meatAndFish: const Color(0xffF7A593),
    ProductCategory.bakeryAndSnacks: const Color(0xffD3B0E0),
    ProductCategory.dairyAndEggs: const Color(0xffFDE598),
    ProductCategory.beverages: const Color(0xffB7DFF5),
  };
  // a map to define images for each category
  final Map<ProductCategory, String> categoryImages = {
    ProductCategory.fruitsAndVegetables : AppMedia.vegetables,
    ProductCategory.cookingOil : AppMedia.oil,
    ProductCategory.meatAndFish : AppMedia.meatFish,
    ProductCategory.bakeryAndSnacks : AppMedia.bakery,
    ProductCategory.dairyAndEggs : AppMedia.dairy,
    ProductCategory.beverages : AppMedia.beverages,
  };

  // method to convert enum to user-friendly name
  String getCategoryDisplayName(ProductCategory category){
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
    return Scaffold(
      backgroundColor: MyColors.background,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only( right: 10, top: 15),
          child: Column(
            children: [
          
              // center text and search field
              Column(
                children: [
                  const Text(
                    "Find Products",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 20,),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                        prefixIcon: const Icon(Icons.search),
                        hintText: "Search",
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),


              Expanded(
                child: GridView.builder(
                  itemCount: categories.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1/1.1,
                  ), 
                  itemBuilder: (context, index){
                    final category = categories[index];
                    return GestureDetector(
                      onTap: (){ Navigator.pushNamed(context, "/productListScreen", arguments: category); },
                      child: Container(
                        alignment: Alignment.center,
                        margin: const EdgeInsets.only(left: 10),
                        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        decoration: BoxDecoration(
                          color: categoryColors[category]!.withOpacity(0.2),
                          border: Border.all(color: categoryColors[category]!),
                          borderRadius: BorderRadius.circular(18)
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 90,
                              height: 80,
                              child: Image.asset(categoryImages[category]!,)
                            ),
                      
                            Text(
                              getCategoryDisplayName(category),
                              textAlign: TextAlign.center,
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 14,
                              ),
                            )
                          ],
                        ),
                      ),
                    );
                  }
                ),
              ),

              const SizedBox(height: 3)




              // another way to do it
              //grid body
              // Expanded(
              //   child: GridView.count(
              //     crossAxisCount: 2,
              //     mainAxisSpacing: 15,
              //     crossAxisSpacing: 5,
              //     children: [
              //       SearchProductsTile(text: "Fresh Fruits & Vegetables", color: const Color(0xff53B175), imagePath: AppMedia.appleImg, onTap: () { Navigator.pushNamed(context, '/fruitsAndVeg'); },),
              //       SearchProductsTile(text: "Cooking Oil & Ghee", color: const Color(0xffF8A44C), imagePath: AppMedia.oil, onTap: () { Navigator.pushNamed(context, '/cookingOil'); },),
              //       SearchProductsTile(text: "Meat & Fish", color: const Color(0xffF7A593), imagePath: AppMedia.meatFish, onTap: () { Navigator.pushNamed(context, '/meatAndFish'); },),
              //       SearchProductsTile(text: "Bakery & Snacks", color: const Color(0xffD3B0E0), imagePath: AppMedia.bakery, onTap: () { Navigator.pushNamed(context, '/bakeryAndSnacks'); },),
              //       SearchProductsTile(text: "Dairy & Eggs", color: const Color(0xffFDE598), imagePath: AppMedia.dairy, onTap: () { Navigator.pushNamed(context, '/dairyAndEggs'); },),
              //       SearchProductsTile(text: "Beverages", color: const Color(0xffB7DFF5), imagePath: AppMedia.beverages, onTap: () { Navigator.pushNamed(context, '/beverages'); },),
              //       // dummy tiles
              //       SearchProductsTile(text: "Dairy & Eggs", color: const Color(0xff836AF6), imagePath: AppMedia.vegetables, onTap: () {  },),
              //       SearchProductsTile(text: "Beverages", color: const Color(0xffD73B77), imagePath: AppMedia.oil, onTap: () {  },),
              //     ],
              //   ),
              // ),
              
            ],
          ),
        ),
      ),
    );
  }
}