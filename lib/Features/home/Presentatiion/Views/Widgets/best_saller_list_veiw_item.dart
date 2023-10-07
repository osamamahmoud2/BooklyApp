import 'package:bokly/Core/utils/App_router.dart';
import 'package:bokly/Core/utils/styles.dart';

import 'package:bokly/Core/utils/constanats.dart';
import 'package:bokly/Features/home/Data/Models/book_model/book_model.dart';
import 'package:bokly/Features/home/Presentatiion/Views/Widgets/Book_rating.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BestSallerListVeiwItem extends StatelessWidget {
  const BestSallerListVeiwItem({super.key, required this.bookModel});
  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetialsView, extra: bookModel);
      },
      child: SizedBox(
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
                    image: CachedNetworkImageProvider(bookModel
                            .volumeInfo.imageLinks?.thumbnail ??
                        'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.vectorstock.com%2Froyalty-free-vector%2Ferror-flat-red-color-icon-vector-6076345&psig=AOvVaw1anDbNWblVn5XJVx949pR6&ust=1696579509388000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCKDjzO-r3oEDFQAAAAAdAAAAABAJ'),
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
                      bookModel.volumeInfo.title!,
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
                    bookModel.volumeInfo.authors![0],
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
                        bookRateing: bookModel.volumeInfo.averageRating ?? 0,
                        rateingcount: bookModel.volumeInfo.ratingsCount ?? 0,
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
