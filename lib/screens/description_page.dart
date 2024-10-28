import 'package:flutter/material.dart';
import 'package:flutter_carousel_widget/flutter_carousel_widget.dart';
import 'package:groceries_store/models/product.dart';
import 'package:groceries_store/res/utils.dart';

class DescriptionPage extends StatefulWidget {

  const DescriptionPage({super.key});

  @override
  State<DescriptionPage> createState() => _DescriptionPageState();
}

class _DescriptionPageState extends State<DescriptionPage> {

  bool isFavorite = false;

  int _currentNumber = 1;
  void _removeNumber(){
    setState(() {
      _currentNumber--;
    });
  }
  void _addNumber(){
    setState(() {
       _currentNumber ++;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Product product = ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
      backgroundColor: MyColors.background,

      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
          
              // upper section
              Container(
                width: Utils.getWidth(context),
                height: Utils.setHeight(context, 0.40),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(25), bottomRight: Radius.circular(25))
                ),
                child: Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      
                      // top nav bar
                      Container(
                        decoration: const BoxDecoration(
                          // color: Colors.red
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            // left icon
                            IconButton(
                              onPressed: ()=> Navigator.pop(context),
                               icon: const Icon(Icons.arrow_back_ios)
                            ),
                  
                            // right icon
                            IconButton(
                              onPressed: (){},
                              icon: const Icon(Icons.ios_share_rounded)
                            )
                          ],
                        ),
                      ),
                          
                      // image carousel
                      Expanded(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            // color: Colors.blue,
                            child: FlutterCarousel(
                              items: [
                                Image.asset(product.imagePath, fit: BoxFit.fill,),
                              ], 
                              options: FlutterCarouselOptions(
                                enableInfiniteScroll: true,
                                autoPlay: true,
                                autoPlayInterval: const Duration(seconds: 4),
                                floatingIndicator: false,
                                viewportFraction: 1.0,
                                slideIndicator: CircularSlideIndicator(
                                  slideIndicatorOptions: const SlideIndicatorOptions(
                                    currentIndicatorColor: Color(0xff53B175),
                                    itemSpacing: 15,
                                    indicatorRadius: 3,
                                  )
                                )
                              )
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
        
              // lower section
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // name and favorite button
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            product.name,
                            style: const TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold
                            )
                          ),
                          IconButton(
                            onPressed: (){
                              setState(() {
                                isFavorite = !isFavorite;
                              });
                            }, 
                            icon: isFavorite ? const Icon(Icons.favorite_border_outlined, size: 27,) : const Icon(Icons.favorite, size: 27, color: Colors.red)
                          )
                        ],
                      ),
                                  
                      // quantity
                      Text(
                        product.quantity,
                        style: const TextStyle(
                          color: Color(0xff7C7C7C),
                          fontSize: 15,
                        )
                      ),
                      const SizedBox(height: 20,),
                                  
                      // add and remove button   and   price tag
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // add and remove button
                          Row(
                            children: [
                              IconButton(
                                onPressed:  _removeNumber,
                                icon: const Icon(Icons.remove, color: Color(0xffB3B3B3),)
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                                decoration: BoxDecoration(
                                  border: Border.all(color: const Color(0xffE2E2E2)),
                                  borderRadius: BorderRadius.circular(17)
                                ),
                                child: Text(
                                  _currentNumber.toString(),
                                ),
                              ),
                              IconButton(
                                onPressed: _addNumber,
                                icon: const Icon(Icons.add, color: Color(0xff53B175),)
                              ),
                            ],
                          ),
                                  
                          // price tag
                          Text(
                            "\$${product.price.toString()}",
                            style: const TextStyle(
                              color: Color(0xff181725),
                              fontWeight: FontWeight.bold,
                              fontSize: 23,
                            )
                          )
                        ]
                      ),
                          
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(),
                      ),
                                  
                      // details
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Product Detail", style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),),
                          Icon(Icons.keyboard_arrow_down_rounded, size: 30,)
                        ],
                      ),
                      const SizedBox(height: 10,),
                          
                      Text(
                        product.description ?? 'No product description available',
                        style: const TextStyle(color: Color(0xff7C7C7C)),
                        ),
                          
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(),
                      ),
                                  
                      // nutritions
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            "Nutritions",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
                          ),
                          Row(
                            children: [
                              Container(
                                padding: const EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  color: const Color(0xff7C7C7C),
                                  borderRadius: BorderRadius.circular(5)
                                ),
                                child: const Text("100gr", style: TextStyle(fontSize: 10,),)
                              ),
                              const SizedBox(width: 20,),
                              const Icon(Icons.arrow_forward_ios, size: 20)
                            ],
                          )
                        ],
                      ),
                          
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: 10),
                        child: Divider(),
                      ),
                                  
                      //review and ratings
                      const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Review",
                            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)
                          ),
                          Row(
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Color(0xffF3603F), size: 20,),
                                  Icon(Icons.star, color: Color(0xffF3603F), size: 20,),
                                  Icon(Icons.star, color: Color(0xffF3603F), size: 20,),
                                  Icon(Icons.star, color: Color(0xffF3603F), size: 20,),
                                  Icon(Icons.star, color: Color(0xffF3603F), size: 20,),
                                ],
                              ),
                          
                              SizedBox(width: 20,),
                          
                              Icon(Icons.arrow_forward_ios, size: 20)
                            ],
                          )
                        ],
                      ),
                  
                      const SizedBox(height: 20,),
                                  
                      // add to basket button
                      Center(
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 110),
                          decoration: BoxDecoration(
                            color: const Color(0xff53B175),
                            borderRadius: BorderRadius.circular(19)
                          ),
                          child: const Text(
                            "Add To Basket",
                            style: TextStyle(
                              color: Color(0xffFFF9FF),
                              fontSize: 16
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              )
        
        
        
        
            ],
          ),
        ),
      ),
    );
  }
}