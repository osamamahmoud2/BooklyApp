import 'package:bokly/Core/utils/styles.dart';

import 'package:bokly/Core/utils/constanats.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/Book_rating.dart';
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
                color: Colors.transparent,
                image: const DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('Assets/Images/book.png'),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * .5,
                  child: Text(
                    'Harry Potter and the Goblet of Fire',
                    style:
                        Styles.textstyle18.copyWith(fontFamily: ksecoundfont),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                const Text(
                  'J.K. Rowling',
                  style: Styles.textstyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      '19.99 €',
                      style: Styles.textstyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    const BookRateing()
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
