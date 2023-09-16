import 'package:flutter/material.dart';

class BestSallerListVeiwItem extends StatelessWidget {
  const BestSallerListVeiwItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 113.6,
      child: Row(
        children: [
          AspectRatio(
            aspectRatio: 2.7 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('Assets/Images/book.png'),
                ),
              ),
            ),
          ),
          const Column(
            children: [],
          )
        ],
      ),
    );
  }
}
