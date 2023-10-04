import 'package:bokly/Core/utils/styles.dart';

import 'package:bokly/Core/utils/constanats.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/Book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BestSallerListVeiwItem extends StatelessWidget {
  const BestSallerListVeiwItem({super.key, required this.bookModel});
  final BookModel bookModel;
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
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: CachedNetworkImageProvider(
                      bookModel.volumeInfo!.imageLinks!.thumbnail),
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
                    bookModel.volumeInfo!.title!,
                    style:
                        Styles.textstyle18.copyWith(fontFamily: ksecoundfont),
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 3,
                ),
                Text(
                  bookModel.volumeInfo!.authors![0],
                  style: Styles.textstyle14,
                ),
                const SizedBox(
                  height: 3,
                ),
                Row(
                  children: [
                    Text(
                      'Free',
                      style: Styles.textstyle20
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                    const Spacer(),
                    BookRateing(
                      bookRateing: bookModel.volumeInfo!.averageRating ?? 0,
                      rateingcount: bookModel.volumeInfo!.ratingsCount ?? 0,
                    )
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
