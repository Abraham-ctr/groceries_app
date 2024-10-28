import 'package:flutter/material.dart';
import 'package:groceries_store/res/app_media.dart';
import 'package:groceries_store/widgets/base_widgets/button.dart';

class AddAllToCartDialog extends StatelessWidget {
  const AddAllToCartDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // icon
          IconButton(
            onPressed: (){Navigator.pop(context);},
            icon: const Icon(
              Icons.close
            )
          ),

          // image
          SizedBox(
            child: Image.asset(AppMedia.failed),
          ),

          // texts
          const Center(
            child: Text(
                    "Oops! Order Failed",
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w400
                    ),
                    textAlign: TextAlign.center,
                  ),
          ),

                const SizedBox(height: 5),

                const Center(
                  child: Text(
                    "Something went tembly wrong.",
                    style: TextStyle(
                      fontSize: 17,
                      color: Colors.grey
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),

          const SizedBox(height: 70),

          // buttons
          SizedBox(
            child: Column(
              children: [
                Button(text: "Please Try Again", onButtonPressed: (){Navigator.pop(context);}),
                GestureDetector(
                  onTap: ()=> Navigator.pushNamed(context, '/bottomnavbar'),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 60),
                    child: const Text(
                        "Back to home",
                        style: TextStyle(
                          fontSize: 16,
                        ),
                    )
                  ),
                )

              ],
            ),
          )
        ],
      ),
    );
  }
}