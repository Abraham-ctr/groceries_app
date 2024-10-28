import 'package:flutter/material.dart';
import 'package:groceries_store/res/utils.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';

class FilterScreen extends StatefulWidget {
  const FilterScreen({super.key});

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen> {

  bool _isEggs = false;
  bool _isNoodles = false;
  bool _isChips = false;
  bool _isFastFood = false;

  bool _isIndividual = false;
  bool _isCocacola = false;
  bool _isIfad = false;
  bool _isKazi = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text("Filters"),
        leading:  IconButton(
          icon: const Icon(Icons.close_rounded),
          onPressed: () => Navigator.pop(context),
        ),
      ),

      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
        decoration: const BoxDecoration(
          color:  Color(0xffF2F3F2),
          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
        
            // big text
            const Text(
              "Categories",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
        
            // checkboxes
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _isEggs, 
                      onChanged: (value){
                        setState(() {
                          _isEggs = !_isEggs;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "Eggs",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isNoodles, 
                      onChanged: (value){
                        setState(() {
                          _isNoodles = !_isNoodles;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "Noodles & Pasta",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChips, 
                      onChanged: (value){
                        setState(() {
                          _isChips = !_isChips;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "Chips & Crisps",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isFastFood, 
                      onChanged: (value){
                        setState(() {
                          _isFastFood = !_isFastFood;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "Fast Food",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
        
              ],
            ),

            const SizedBox(height: 15),
        
            // brand text
            const Text(
              "Brand",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20,
              ),
            ),
        
            // checkboxes
            Column(
              children: [
                Row(
                  children: [
                    Checkbox(
                      value: _isIndividual, 
                      onChanged: (value){
                        setState(() {
                          _isIndividual = !_isIndividual;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "Individual Collection",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isCocacola, 
                      onChanged: (value){
                        setState(() {
                          _isCocacola = !_isCocacola;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "CocaCola",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isIfad, 
                      onChanged: (value){
                        setState(() {
                          _isIfad = !_isIfad;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "Ifad",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isKazi, 
                      onChanged: (value){
                        setState(() {
                          _isKazi = !_isKazi;
                        });
                      },
                      activeColor: const Color(0xff53B175),
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                    ),
                    const Text(
                      "Kazi Farmas",
                      style: TextStyle(
                        color: Color(0xff53B175)
                      ),
                    )
                  ],
                ),
        
              ],
            ),

            const Spacer(),
        
            // button
            Center(child: Button(text: "Apply Filter", onButtonPressed: (){Navigator.pop(context);} ))
          ],
        ),
      ),
    );
  }
}